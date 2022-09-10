import { ApiProperty } from '@nestjs/swagger';

export class DocumentOutput {
  @ApiProperty()
  id: string;

  @ApiProperty()
  title: string;

  @ApiProperty()
  data: string;

  @ApiProperty()
  createdAt: Date;

  constructor(init?: Partial<DocumentOutput>) {
    Object.assign(this, init);
  }
}
