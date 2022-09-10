import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { Vehicle } from '@prisma/client';
import { SectionOutput } from './section.output';

export class GetViolationOutput {
  @ApiProperty()
  id: string;

  @ApiProperty()
  title: string;

  @ApiProperty()
  viewCount: number;

  @ApiProperty()
  minPenalty: number;

  @ApiProperty()
  maxPenalty: number;

  @ApiProperty({ enum: Vehicle })
  affectedVehicle: Vehicle;

  @ApiProperty()
  createdAt: Date;

  @ApiProperty()
  images: string[];

  @ApiProperty({ type: [SectionOutput] })
  sections: SectionOutput[];

  constructor(init?: Partial<GetViolationOutput>) {
    Object.assign(this, init);
  }
}
