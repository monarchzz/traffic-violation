import { ApiProperty } from '@nestjs/swagger';

export class ReferenceOutput {
  @ApiProperty()
  id: string;

  @ApiProperty()
  title: string;

  @ApiProperty()
  startIndex: number;

  @ApiProperty()
  endIndex: number;

  @ApiProperty()
  createdAt: Date;

  @ApiProperty()
  documentId: string;

  constructor(init?: Partial<ReferenceOutput>) {
    Object.assign(this, init);
  }
}
