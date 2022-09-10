import {
  CACHE_MANAGER,
  Inject,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { toSkip } from 'src/common/utils';
import { violationIndex } from 'src/constant';
import { ElasticSearchService } from 'src/elastic-search/elastic-search.service';
import { PrismaService } from 'src/prisma/prisma.service';
import { GetAllViolationInput } from './dto/input/get-all-violation.input';
import { SearchViolation } from './dto/input/search-violation.input';
import { Cache } from 'cache-manager';
import { GetViolationOutput } from './dto/output/get-violation.output';
import { SectionOutput } from './dto/output/section.output';
import { GetAllViolationOutput } from './dto/output/get-all-violation.output';
import { SearchViolationOutput } from './dto/output/search-violation.output';
import { ViolationItemOutput } from './dto/output/violation-item.output';
import { Vehicle } from '@prisma/client';

@Injectable()
export class ViolationService {
  private index: string;

  constructor(
    private readonly esService: ElasticSearchService,
    private prisma: PrismaService,
    @Inject(CACHE_MANAGER) private cacheManager: Cache,
  ) {
    this.index = violationIndex;
    this.autoSeed();
  }

  async getViolation(id: string) {
    try {
      const violation = await this.prisma.violation.update({
        where: {
          id,
        },
        data: {
          viewCount: {
            increment: 1,
          },
        },
        select: {
          id: true,
          title: true,
          viewCount: true,
          affectedVehicle: true,
          createdAt: true,
          minPenalty: true,
          maxPenalty: true,
          images: true,
          sections: {
            select: {
              id: true,
              type: true,
              data: true,
              penalty: true,
              createdAt: true,
              reference: {
                select: {
                  id: true,
                  startIndex: true,
                  endIndex: true,
                  title: true,
                  createdAt: true,
                  documentId: true,
                },
              },
            },
          },
        },
      });

      violation.sections.sort((a) => (a.type == 'PENALTY' ? -1 : 1));

      return new GetViolationOutput({
        ...violation,
        sections: violation.sections.map(
          (value) =>
            new SectionOutput({
              ...value,
            }),
        ),
      });
    } catch (e) {
      console.log(e);
      throw new NotFoundException('Violation not found');
    }
  }

  async getAll(dto: GetAllViolationInput) {
    const { pageIndex, pageSize } = dto;

    const violations = await this.prisma.violation.findMany({
      skip: toSkip(pageIndex, pageSize),
      take: pageSize,
      select: {
        id: true,
        title: true,
        viewCount: true,
        affectedVehicle: true,
        minPenalty: true,
        maxPenalty: true,
        createdAt: true,
        images: true,
      },
      orderBy: [
        {
          viewCount: 'desc',
        },
      ],
    });
    return new GetAllViolationOutput({
      items: violations,
      total: await this.prisma.violation.count(),
      pageIndex: pageIndex,
      pageSize: pageSize,
    });
  }

  async search(dto: SearchViolation) {
    //get from cache cache
    let ids = [];
    const { keyword } = dto;
    // if (dto.keyword == '') {
    //   return {
    //     items: [],
    //     total: 0,
    //     pageIndex: pageIndex,
    //     pageSize: pageSize,
    //   };
    // }
    const pageIndex =
      dto.pageIndex == null || dto.pageIndex == undefined ? 1 : dto.pageIndex;
    const pageSize =
      dto.pageSize == null || dto.pageSize == undefined ? 10 : dto.pageSize;
    const affectedVehicle =
      dto.affectedVehicle == null ? Vehicle.BOTH : dto.affectedVehicle;
    const minPenalty = dto.minPenalty == null ? undefined : dto.minPenalty;
    const maxPenalty = dto.maxPenalty == null ? undefined : dto.maxPenalty;

    if (keyword == '') {
      const result = await this.prisma.violation.findMany({
        skip: toSkip(pageIndex, pageSize),
        take: pageSize,
        where: {
          // id: { in: newIds },
          affectedVehicle:
            affectedVehicle == Vehicle.BOTH
              ? { in: [Vehicle.CAR, Vehicle.BIKE, Vehicle.BOTH] }
              : { in: [affectedVehicle, Vehicle.BOTH] },
          minPenalty: { gte: minPenalty },
          maxPenalty: { lte: maxPenalty },
        },
        select: {
          id: true,
          title: true,
          viewCount: true,
          affectedVehicle: true,
          minPenalty: true,
          maxPenalty: true,
          createdAt: true,
          images: true,
        },
      });

      return new SearchViolationOutput({
        items: result,
        total: ids.length,
        pageIndex: pageIndex,
        pageSize: pageSize,
      });
    } else {
      const violationCache: string = await this.cacheManager.get(keyword);
      if (violationCache) {
        ids = JSON.parse(violationCache);
      } else {
        const { data } = await this.esService.search(this.index, {
          query: {
            bool: {
              should: [
                {
                  match: {
                    sectionData: keyword,
                  },
                },
              ],
            },
          },
        });

        const violationIds = data.map((result) => result.violationId);

        for (let i = 0; i < violationIds.length; i++) {
          if (!ids.includes(violationIds[i])) {
            ids.push(violationIds[i]);
          }
        }
        this.cacheManager.set(keyword, JSON.stringify(ids));
      }

      // const newIds = pagination(ids, pageIndex, pageSize);
      const newIds = ids;

      const result = await this.prisma.violation.findMany({
        skip: toSkip(pageIndex, pageSize),
        take: pageSize,
        where: {
          id: { in: newIds },
          affectedVehicle:
            affectedVehicle == Vehicle.BOTH
              ? { in: [Vehicle.CAR, Vehicle.BIKE, Vehicle.BOTH] }
              : { in: [affectedVehicle, Vehicle.BOTH] },
          minPenalty: { gte: minPenalty },
          maxPenalty: { lte: maxPenalty },
        },
        select: {
          id: true,
          title: true,
          viewCount: true,
          affectedVehicle: true,
          minPenalty: true,
          maxPenalty: true,
          createdAt: true,
          images: true,
        },
      });

      return new SearchViolationOutput({
        items: this.sortResult(newIds, result),
        total: ids.length,
        pageIndex: pageIndex,
        pageSize: pageSize,
      });
    }
  }

  async mostViewed() {
    const violations = await this.prisma.violation.findMany({
      skip: 0,
      take: 10,
      select: {
        id: true,
        title: true,
        viewCount: true,
        affectedVehicle: true,
        minPenalty: true,
        maxPenalty: true,
        createdAt: true,
        images: true,
      },
      orderBy: [
        {
          viewCount: 'desc',
        },
      ],
    });

    return violations.map((value) => new ViolationItemOutput(value));
  }

  async seed() {
    try {
      await this.autoSeed();
    } catch (e) {
      return false;
    }

    return true;
  }

  private sortResult(ids: string[], result: any[]) {
    const newResult = [];

    for (let i = 0; i < ids.length; i++) {
      const index = result.findIndex((value) => value.id == ids[i]);
      if (
        index >= 0 &&
        newResult.findIndex((value) => value.id == ids[i]) < 0
      ) {
        newResult.push(result[index]);
      }
    }
    return newResult;
  }

  private async autoSeed() {
    const isSeedData = await this.esService.ensureIndexCreated(this.index);
    if (!isSeedData) {
      const sections = await this.prisma.section.findMany({
        include: { violation: true },
      });
      for (const section of sections) {
        await this.esService.create(this.index, {
          id: section.id,
          sectionData: section.data,
          violationId: section.violation.id,
        });
      }

      console.log('Seeding success');
    }
  }
}
