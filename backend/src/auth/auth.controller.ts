import { Body, Controller, Post } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { AuthService } from './auth.service';
import { LoginInput } from './dto/input/login.input';
import { RefreshTokenInput } from './dto/input/refresh-token.input';
import { SignUpInput } from './dto/input/sign-up.input';

@ApiTags('Auth')
@Controller('auth')
export class AuthController {
  constructor(private readonly auth: AuthService) {}

  @Post('signup')
  signUp(@Body() dto: SignUpInput) {
    dto.email = dto.email.toLowerCase();
    if (!dto.avatar) dto.avatar = '';
    return this.auth.createUser(dto);
  }

  @Post('login')
  login(@Body() dto: LoginInput) {
    return this.auth.login(dto.email.toLowerCase(), dto.password);
  }

  @Post('refreshToken')
  refreshToken(@Body() dto: RefreshTokenInput) {
    return this.auth.refreshToken(dto.token);
  }
}
