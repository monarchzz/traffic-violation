import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { ObjectId } from 'bson';
import { IsArray, IsMongoId, IsNotEmpty } from 'class-validator';

export class CreateReportInput {
  @ApiProperty()
  @IsNotEmpty()
  title: string;

  @ApiProperty()
  @IsNotEmpty()
  data: string;

  @ApiProperty()
  @ApiPropertyOptional()
  @IsArray()
  images: string[];

  @ApiProperty()
  @IsMongoId()
  @IsNotEmpty()
  violationId: string;
}
