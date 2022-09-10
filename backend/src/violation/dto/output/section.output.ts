import { ApiProperty } from '@nestjs/swagger';
import { SectionType } from '@prisma/client';
import { ReferenceOutput } from './reference.output';

export class SectionOutput {
  @ApiProperty()
  id: string;

  @ApiProperty({ enum: SectionType })
  type: SectionType;

  @ApiProperty()
  data: string;

  @ApiProperty({ nullable: true })
  penalty: string;

  @ApiProperty()
  createdAt: Date;

  @ApiProperty({ type: ReferenceOutput })
  reference: ReferenceOutput;

  constructor(init?: Partial<SectionOutput>) {
    Object.assign(this, init);
  }
}
