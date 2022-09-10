import {
  BadRequestException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { DocumentOutput } from './dto/output/document.output';

@Injectable()
export class DocumentService {
  constructor(private prisma: PrismaService) {}

  async getDocument(id: string) {
    try {
      const document = await this.prisma.document.findUnique({
        where: { id },
        select: {
          id: true,
          title: true,
          data: true,
          createdAt: true,
        },
      });
      if (!document) throw new NotFoundException('Document not found');

      return new DocumentOutput(document);
    } catch (e) {
      throw new BadRequestException();
    }
  }
}
