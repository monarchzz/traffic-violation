import { ApiProperty } from '@nestjs/swagger';
import { IsJWT, IsNotEmpty } from 'class-validator';

export class RefreshTokenInput {
  @ApiProperty()
  @IsNotEmpty()
  @IsJWT()
  token: string;
}
