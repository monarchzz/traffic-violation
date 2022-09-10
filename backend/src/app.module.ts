import { Module } from '@nestjs/common';
import { ConfigModule } from '@nestjs/config';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import config from './common/configs/config';
import { AuthModule } from './auth/auth.module';
import { UserModule } from './user/user.module';
import { LogModule } from './log/log.module';
import { ElasticSearchModule } from './elastic-search/elastic-search.module';
import { ViolationModule } from './violation/violation.module';
import { UploadModule } from './upload/upload.module';
import { DocumentModule } from './document/document.module';
import { CommentModule } from './comment/comment.module';
import { ReportModule } from './report/report.module';

@Module({
  imports: [
    ConfigModule.forRoot({ isGlobal: true, load: [config] }),
    AuthModule,
    UserModule,
    LogModule,
    UploadModule,
    DocumentModule,
    ElasticSearchModule,
    ViolationModule,
    CommentModule,
    ReportModule,
  ],
  controllers: [AppController],
  providers: [AppService],
})
export class AppModule {}
