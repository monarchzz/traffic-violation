import { Body, Controller, Get, Put, Query, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { JwtAuthGuard } from 'src/auth/auth.guard';
import { AuthUser } from 'src/common/decorators/User';
import { CurrentUser } from 'src/common/decorators/user.decorator';
import { ChangePasswordInput } from './dto/input/change-password.input';
import { SaveViolationInput } from './dto/input/save-violation.input';
import { UpdateUserInput } from './dto/input/update-user.input';
import { UserOutput } from './dto/output/user.ouput';
import { UserService } from './user.service';

@ApiTags('User')
@ApiBearerAuth()
@Controller('user')
export class UserController {
  constructor(private usersService: UserService) {}

  @Get('profile')
  @UseGuards(JwtAuthGuard)
  async profile(@CurrentUser() user: AuthUser) {
    return new UserOutput({ ...(await this.usersService.profile(user.id)) });
  }

  @Put()
  @UseGuards(JwtAuthGuard)
  async updateUser(
    @CurrentUser() user: AuthUser,
    @Body() userData: UpdateUserInput,
  ) {
    await this.usersService.updateUser(user.id, userData);
  }

  @Put('change-password')
  @UseGuards(JwtAuthGuard)
  async changePassword(
    @CurrentUser() user: AuthUser,
    @Body() changePassword: ChangePasswordInput,
  ) {
    await this.usersService.changePassword(user.id, changePassword);
  }

  @Put('save-violation')
  @UseGuards(JwtAuthGuard)
  async saveViolation(
    @Body() dto: SaveViolationInput,
    @CurrentUser() user: AuthUser,
  ) {
    await this.usersService.saveViolation(dto.violationId, user.id);
  }

  @Put('unsaved-violation')
  @UseGuards(JwtAuthGuard)
  async unsavedViolation(
    @Body() dto: SaveViolationInput,
    @CurrentUser() user: AuthUser,
  ) {
    await this.usersService.unsavedViolation(dto.violationId, user.id);
  }

  @Get('saved-violations')
  @UseGuards(JwtAuthGuard)
  async getSavedViolations(
    @CurrentUser() user: AuthUser,
    @Query('size') size: number,
  ) {
    const validatedSize =
      size == null || size == undefined || size < 0 ? Number.MAX_VALUE : size;
    return await this.usersService.getSavedViolations(user.id, validatedSize);
  }

  @Get('is-saved-violations')
  @UseGuards(JwtAuthGuard)
  async isViolationSaved(
    @CurrentUser() user: AuthUser,
    @Query('violationId') violationId: string,
  ) {
    return await this.usersService.isViolationSaved(user.id, violationId);
  }
}
