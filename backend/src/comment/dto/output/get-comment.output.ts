import { ApiProperty } from '@nestjs/swagger';
import { UserOutput } from 'src/user/dto/output/user.ouput';
import { GetCommentItemOutput } from './get-comment-item.output';

export class GetCommentOutput {
  @ApiProperty({ type: [GetCommentItemOutput] })
  items: GetCommentItemOutput[];

  @ApiProperty()
  total: number;

  @ApiProperty()
  pageIndex: number;

  @ApiProperty()
  pageSize: number;

  constructor(init: Partial<GetCommentOutput>) {
    Object.assign(this, init);
  }
}
