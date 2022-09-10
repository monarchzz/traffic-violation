import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { IsInt, IsMongoId, IsOptional, Min } from 'class-validator';

export class GetCommentByViolationInput {
  @ApiProperty()
  @IsMongoId()
  violationId: string;

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

  constructor(partial: Partial<GetCommentByViolationInput>) {
    Object.assign(this, partial);
  }
}
