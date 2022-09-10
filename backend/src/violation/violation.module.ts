import { CacheModule, Module } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { ViolationController } from './violation.controller';
import { ViolationService } from './violation.service';

@Module({
  imports: [CacheModule.register({ ttl: 0 })],
  controllers: [ViolationController],
  providers: [ViolationService, PrismaService],
})
export class ViolationModule {}
