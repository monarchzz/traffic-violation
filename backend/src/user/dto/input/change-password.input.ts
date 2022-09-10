import { ApiProperty } from '@nestjs/swagger';
import { IsNotEmpty, MinLength } from 'class-validator';

export class ChangePasswordInput {
  @ApiProperty()
  @IsNotEmpty()
  @MinLength(6)
  oldPassword: string;

  @IsNotEmpty()
  @MinLength(6)
  @ApiProperty()
  newPassword: string;
}
