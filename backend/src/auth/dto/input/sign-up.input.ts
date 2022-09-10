import {
  IsEmail,
  IsEnum,
  IsNotEmpty,
  IsOptional,
  MinLength,
} from 'class-validator';
import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { Gender } from '@prisma/client';

export class SignUpInput {
  @ApiProperty({ type: String })
  @IsNotEmpty()
  @IsEmail()
  email: string;

  @ApiProperty({ type: String })
  @IsNotEmpty()
  @MinLength(6)
  password: string;

  @ApiPropertyOptional({ type: String })
  @IsOptional()
  name: string;

  @ApiPropertyOptional({ type: String })
  @IsOptional()
  phone: string;

  @ApiPropertyOptional({ type: Date })
  @IsOptional()
  birthday: Date;

  @ApiPropertyOptional({ enum: Gender })
  @IsOptional()
  @IsEnum(Gender)
  gender: Gender;

  // eslint-disable-next-line @typescript-eslint/no-inferrable-types
  @ApiPropertyOptional({ type: String })
  @IsOptional()
  avatar: string = '';
}
