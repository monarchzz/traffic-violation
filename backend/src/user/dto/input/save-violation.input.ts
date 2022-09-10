import { ApiProperty } from '@nestjs/swagger';
import { IsMongoId, IsNotEmpty } from 'class-validator';

export class SaveViolationInput {
  @ApiProperty({ type: String })
  @IsNotEmpty()
  @IsMongoId()
  violationId: string;
}
