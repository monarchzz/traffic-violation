import { ApiProperty } from '@nestjs/swagger';
import { ViolationItemOutput } from './violation-item.output';

export class SearchViolationOutput {
  @ApiProperty({ type: [ViolationItemOutput] })
  items: ViolationItemOutput[];

  @ApiProperty()
  total: number;

  @ApiProperty()
  pageIndex: number;

  @ApiProperty()
  pageSize: number;

  constructor(init: Partial<SearchViolationOutput>) {
    Object.assign(this, init);
  }
}
