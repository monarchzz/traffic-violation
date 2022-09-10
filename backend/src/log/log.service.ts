import { Injectable, NotFoundException } from '@nestjs/common';
import { LogType } from '@prisma/client';
import { toSkip } from 'src/common/utils';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateLogInput } from './dto/input/create-log.input';
import { MyLogInput } from './dto/input/my-log.inptut';
import { ItemLogOutput } from './dto/output/item-log.output';
import { LogOutput } from './dto/output/log.output';
import { MyLogOutput } from './dto/output/my-log.output';

@Injectable()
export class LogService {
  constructor(private prisma: PrismaService) {}

  async createLog(dto: CreateLogInput, userId: string) {
    await this.prisma.log.create({
      data: {
        ...dto,
        userId: userId,
      },
    });
  }

  async createLogWithUnknown(dto: CreateLogInput) {
    await this.prisma.log.create({
      data: {
        ...dto,
      },
    });
  }

  async getMostSearch() {
    const logs = await this.prisma.log.groupBy({
      by: ['data'],
      _count: {
        id: true,
      },
      where: {
        type: LogType.SEARCH,
      },
      orderBy: {
        _count: {
          id: 'desc',
        },
      },
      take: 5,
      skip: 0,
    });

    return logs.map((value) => value.data);
  }

  async getLog(id: string) {
    const log = await this.prisma.log.findUnique({
      where: {
        id,
      },
      select: {
        id: true,
        type: true,
        data: true,
        createdAt: true,
        userId: true,
      },
    });

    if (!log) throw new NotFoundException('Log not found');

    return new LogOutput({ ...log });
  }

  async myLogs(dto: MyLogInput, userId: string) {
    const { pageIndex, pageSize } = dto;

    try {
      const logs = await this.prisma.log.findMany({
        skip: toSkip(pageIndex, pageSize),
        take: pageSize,
        where: {
          userId: userId,
          type: dto.type,
        },
        select: {
          id: true,
          type: true,
          data: true,
          createdAt: true,
        },
        orderBy: {
          createdAt: 'desc',
        },
      });

      return new MyLogOutput({
        items: logs.map((log) => new ItemLogOutput({ ...log })),
        total: await this.prisma.log.count(),
        pageIndex: pageIndex,
        pageSize: pageSize,
      });
    } catch (e) {
      console.log(e);
      return new MyLogOutput();
    }
  }

  async searchedData(userId: string, size: number) {
    const logs = await this.prisma.log.groupBy({
      by: ['data'],
      _max: {
        createdAt: true,
      },
      where: {
        type: LogType.SEARCH,
        userId: userId,
      },
      orderBy: {
        _max: {
          createdAt: 'desc',
        },
      },
      take: this._isNumber(size) ? Number(size) : 100,
    });
    return logs.map((value) => value.data);
  }

  _isNumber(value: string | number | null | undefined): boolean {
    return (
      value != undefined &&
      value != null &&
      value !== '' &&
      !isNaN(Number(value.toString()))
    );
  }
}
