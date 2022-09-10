import {
  BadRequestException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { toSkip } from 'src/common/utils';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateCommentInput } from './dto/input/create-comment.input';
import { GetCommentByViolationInput } from './dto/input/get-commnet-by-violation.input';
import { UpdateCommentInput } from './dto/input/update-comment.input';
import { GetCommentItemOutput } from './dto/output/get-comment-item.output';
import { GetCommentOutput } from './dto/output/get-comment.output';

@Injectable()
export class CommentService {
  constructor(private prisma: PrismaService) {}

  async createComment(dto: CreateCommentInput, userId: string) {
    const { text, violationId } = dto;

    try {
      const isViolationExist = await this.prisma.violation.count({
        where: {
          id: violationId,
        },
      });

      if (!isViolationExist) throw new NotFoundException('Violation not found');

      await this.prisma.comment.create({
        data: {
          text,
          userId,
          violationId,
        },
      });
    } catch (e) {
      throw new BadRequestException(e.message);
    }
  }

  async updateComment(dto: UpdateCommentInput) {
    await this.prisma.comment.update({
      where: {
        id: dto.id,
      },
      data: {
        text: dto.text,
      },
    });
  }

  async getCommentByViolation(dto: GetCommentByViolationInput) {
    // const { pageIndex, pageSize, violationId } = dto;

    const pageIndex = dto.pageIndex || 1;
    const pageSize = dto.pageSize || 10;

    const comments = await this.prisma.comment.findMany({
      skip: toSkip(pageIndex, pageSize),
      take: pageSize,
      where: {
        violationId: dto.violationId,
      },
      orderBy: {
        createdAt: 'desc',
      },
      select: {
        id: true,
        text: true,
        user: {
          select: {
            id: true,
            email: true,
            name: true,
            phone: true,
            birthday: true,
            gender: true,
            avatar: true,
          },
        },
        createdAt: true,
      },
    });

    // return comments.map((comment) => new GetCommentOutput(comment));
    return new GetCommentOutput({
      items: comments.map((comment) => new GetCommentItemOutput(comment)),
      total: await this.prisma.comment.count({
        where: {
          violationId: dto.violationId,
        },
      }),
      pageIndex: pageIndex,
      pageSize: pageSize,
    });
  }
}
