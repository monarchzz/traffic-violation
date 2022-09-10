import { ApiProperty } from '@nestjs/swagger';
import { LogType } from '@prisma/client';

export class ItemLogOutput {
  @ApiProperty()
  id: string;

  @ApiProperty()
  type: LogType;

  @ApiProperty()
  data: string;

  @ApiProperty()
  createdAt: Date;

  constructor(init?: Partial<ItemLogOutput>) {
    Object.assign(this, init);
  }
}
