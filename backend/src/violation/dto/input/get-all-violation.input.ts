import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { IsInt, IsOptional, Min } from 'class-validator';

export class GetAllViolationInput {
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

  constructor(partial: Partial<GetAllViolationInput>) {
    Object.assign(this, partial);
  }
}
