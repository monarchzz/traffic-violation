import { ApiProperty } from '@nestjs/swagger';
import { LogType } from '@prisma/client';
import { IsEnum, IsNotEmpty } from 'class-validator';

export class CreateLogInput {
  @ApiProperty({ enum: LogType })
  @IsEnum(LogType)
  type: LogType;

  @ApiProperty()
  @IsNotEmpty()
  data: string;
}
