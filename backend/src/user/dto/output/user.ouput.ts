import { ApiProperty } from '@nestjs/swagger';
import { Gender } from '@prisma/client';

export class UserOutput {
  @ApiProperty()
  id: string;

  @ApiProperty()
  email: string;

  @ApiProperty()
  name: string;

  @ApiProperty()
  avatar: string;

  @ApiProperty()
  phone: string;

  @ApiProperty()
  birthday: Date;

  @ApiProperty({ enum: Gender })
  gender: Gender;

  constructor(init?: Partial<UserOutput>) {
    Object.assign(this, init);
  }
}
