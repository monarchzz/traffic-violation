import { Module } from '@nestjs/common';
import { LogService } from './log.service';
import { LogController } from './log.controller';
import { PrismaService } from 'src/prisma/prisma.service';

@Module({
  providers: [LogService, PrismaService],
  controllers: [LogController],
})
export class LogModule {}
