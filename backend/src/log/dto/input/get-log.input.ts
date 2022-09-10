import { ApiProperty } from '@nestjs/swagger';
import { IsMongoId, IsNotEmpty } from 'class-validator';

export class GetLogInput {
  @ApiProperty()
  @IsNotEmpty()
  @IsMongoId()
  id: string;
}
