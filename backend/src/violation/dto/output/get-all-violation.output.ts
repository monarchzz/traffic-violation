import { ApiProperty } from '@nestjs/swagger';
import { ViolationItemOutput } from './violation-item.output';

export class GetAllViolationOutput {
  @ApiProperty({ type: [ViolationItemOutput] })
  items: ViolationItemOutput[];

  @ApiProperty()
  total: number;

  @ApiProperty()
  pageIndex: number;

  @ApiProperty()
  pageSize: number;

  constructor(init: Partial<GetAllViolationOutput>) {
    Object.assign(this, init);
  }
}
