import { ApiProperty } from '@nestjs/swagger';
import { IsMongoId, IsNotEmpty } from 'class-validator';

export class UpdateCommentInput {
  @ApiProperty()
  @IsMongoId()
  id: string;

  @ApiProperty()
  @IsNotEmpty()
  text: string;

  constructor(partial: Partial<UpdateCommentInput>) {
    Object.assign(this, partial);
  }
}
