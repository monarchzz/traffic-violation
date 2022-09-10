import { ApiProperty } from '@nestjs/swagger';
import { UserOutput } from 'src/user/dto/output/user.ouput';

export class GetCommentItemOutput {
  @ApiProperty()
  id: string;

  @ApiProperty()
  text: string;

  @ApiProperty()
  createdAt: Date;

  @ApiProperty({ type: () => UserOutput })
  user: UserOutput;

  constructor(init?: Partial<GetCommentItemOutput>) {
    Object.assign(this, init);
  }
}
