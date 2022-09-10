import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { Gender } from '@prisma/client';

export class UpdateUserInput {
  @ApiProperty()
  @ApiPropertyOptional()
  name?: string;

  @ApiProperty({ type: String })
  @ApiPropertyOptional()
  phone?: string;

  @ApiProperty({ type: Date })
  @ApiPropertyOptional()
  birthday?: Date;

  @ApiProperty({ enum: Gender })
  @ApiPropertyOptional()
  gender?: Gender;

  @ApiProperty()
  @ApiPropertyOptional()
  avatar?: string;
}
