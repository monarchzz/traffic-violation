import { ApiProperty } from '@nestjs/swagger';
import { LogType } from '@prisma/client';

export class LogOutput {
  @ApiProperty()
  id: string;

  @ApiProperty()
  type: LogType;

  @ApiProperty()
  data: string;

  @ApiProperty()
  createdAt: Date;

  @ApiProperty()
  userId?: string;

  constructor(init?: Partial<LogOutput>) {
    Object.assign(this, init);
  }
}
