import { ApiProperty } from '@nestjs/swagger';
import { IsMongoId, IsNotEmpty } from 'class-validator';

export class CreateCommentInput {
  @ApiProperty()
  @IsNotEmpty()
  text: string;

  @ApiProperty()
  @IsMongoId()
  @IsNotEmpty()
  violationId: string;

  constructor(partial: Partial<CreateCommentInput>) {
    Object.assign(this, partial);
  }
}
