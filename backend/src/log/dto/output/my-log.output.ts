import { ApiProperty } from '@nestjs/swagger';
import { ItemLogOutput } from './item-log.output';

export class MyLogOutput {
  @ApiProperty({ type: [ItemLogOutput] })
  items: ItemLogOutput[];

  @ApiProperty()
  total: number;

  @ApiProperty()
  pageIndex: number;

  @ApiProperty()
  pageSize: number;

  constructor(init?: Partial<MyLogOutput>) {
    Object.assign(this, init);
  }
}
