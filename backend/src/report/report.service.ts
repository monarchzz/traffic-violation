import {
  BadRequestException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateReportInput } from './dto/input/create-report.input';

@Injectable()
export class ReportService {
  constructor(private prisma: PrismaService) {}

  async createReport(dto: CreateReportInput, userId: string) {
    const { title, data, images, violationId } = dto;

    try {
      const isViolationExist = await this.prisma.violation.count({
        where: {
          id: violationId,
        },
      });

      if (!isViolationExist) throw new NotFoundException('Violation not found');

      await this.prisma.report.create({
        data: {
          title,
          data,
          violationId,
          userId,
          images: images || [],
        },
      });
    } catch (e) {
      throw new BadRequestException(e.message);
    }
  }
}
