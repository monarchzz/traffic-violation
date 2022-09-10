import { Module } from '@nestjs/common';
import { UploadController } from './upload.controller';
import { UploadProvider } from './upload.provider';
import { UploadService } from './upload.service';

@Module({
  controllers: [UploadController],
  providers: [UploadProvider, UploadService],
})
export class UploadModule {}
