import { Module } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { DocumentController } from './document.controller';
import { DocumentService } from './document.service';

@Module({
  controllers: [DocumentController],
  providers: [DocumentService, PrismaService],
})
export class DocumentModule {}
