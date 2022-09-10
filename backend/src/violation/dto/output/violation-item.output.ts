import { ApiProperty } from '@nestjs/swagger';
import { Vehicle } from '@prisma/client';

export class ViolationItemOutput {
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

  constructor(init: Partial<ViolationItemOutput>) {
    Object.assign(this, init);
  }
}
