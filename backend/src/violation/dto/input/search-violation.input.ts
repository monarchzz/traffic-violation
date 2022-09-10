import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { Vehicle } from '@prisma/client';
import { IsInt, IsOptional, Min } from 'class-validator';

export class SearchViolation {
  @ApiProperty({ type: String })
  keyword = '';

  @ApiProperty({ enum: Vehicle })
  @ApiPropertyOptional()
  @IsOptional()
  affectedVehicle: Vehicle;

  @ApiProperty({ type: Number })
  @ApiPropertyOptional()
  @IsOptional()
  @IsInt()
  @Min(0)
  minPenalty: number;

  @ApiProperty({ type: Number })
  @ApiPropertyOptional()
  @IsOptional()
  @IsInt()
  @Min(0)
  maxPenalty: number;

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
}
