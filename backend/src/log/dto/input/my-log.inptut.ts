import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { LogType } from '@prisma/client';
import { IsEnum, IsInt, IsMongoId, IsOptional, Min } from 'class-validator';

export class MyLogInput {
  @ApiProperty({ enum: LogType })
  @IsEnum(LogType)
  type: LogType;

  @ApiProperty({ default: 1, minimum: 1, type: Number })
  @ApiPropertyOptional()
  @IsOptional()
  @IsInt()
  @Min(1)
  pageIndex = 1;

  @ApiProperty({ default: 10, minimum: 1, type: Number })
  @ApiPropertyOptional()
  @IsOptional()
  @IsInt()
  @Min(1)
  pageSize = 10;

  constructor(partial: Partial<MyLogInput>) {
    Object.assign(this, partial);
  }
}
