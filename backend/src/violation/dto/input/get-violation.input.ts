import { ApiProperty } from '@nestjs/swagger';
import { IsMongoId, IsNotEmpty } from 'class-validator';

export class GetViolationInput {
  @ApiProperty()
  @IsNotEmpty()
  @IsMongoId()
  id: string;
}
