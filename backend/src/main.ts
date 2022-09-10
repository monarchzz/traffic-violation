import { NestFactory } from '@nestjs/core';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';
import { AppModule } from './app.module';
import { ConfigService } from '@nestjs/config';
import {
  CorsConfig,
  NestConfig,
  SwaggerConfig,
} from './common/configs/config.interface';
import { PrismaService } from './prisma/prisma.service';
import { ValidationPipe } from './common/pipes/validation.pipe';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // Validation pipe
  app.useGlobalPipes(new ValidationPipe());

  // enable shutdown hook
  const prismaService: PrismaService = app.get(PrismaService);
  prismaService.enableShutdownHooks(app);

  const configService = app.get(ConfigService);
  const nestConfig = configService.get<NestConfig>('nest');
  const corsConfig = configService.get<CorsConfig>('cors');
  const swaggerConfig = configService.get<SwaggerConfig>('swagger');

  // Swagger APi
  if (swaggerConfig.enabled) {
    const options = new DocumentBuilder()
      .addSecurity('bearer', {
        type: 'http',
        scheme: 'bearer',
      })
      .setTitle(swaggerConfig.title || 'Nestjs')
      .setDescription(swaggerConfig.description || 'The nestjs API description')
      .setVersion(swaggerConfig.version || '1.0')
      .addBearerAuth()
      .build();
    const document = SwaggerModule.createDocument(app, options);

    SwaggerModule.setup(swaggerConfig.path || 'api', app, document);
  }

  // Cors
  if (corsConfig.enabled) {
    app.enableCors();
  }

  const port = process.env.PORT || nestConfig.port || 8000;

  await app.listen(port);
  console.log(`Server running on port ${port}`);
}
bootstrap();
