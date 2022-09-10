import {
  Body,
  Controller,
  Get,
  HttpCode,
  Post,
  Query,
  UseGuards,
} from '@nestjs/common';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { JwtAuthGuard } from 'src/auth/auth.guard';
import { AuthUser } from 'src/common/decorators/User';
import { CurrentUser } from 'src/common/decorators/user.decorator';
import { CreateLogInput } from './dto/input/create-log.input';
import { GetLogInput } from './dto/input/get-log.input';
import { MyLogInput } from './dto/input/my-log.inptut';
import { LogService } from './log.service';

@ApiTags('Log')
@ApiBearerAuth()
@Controller('log')
export class LogController {
  constructor(private readonly logService: LogService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  createLog(@Body() dto: CreateLogInput, @CurrentUser() user: AuthUser) {
    return this.logService.createLog(dto, user.id);
  }

  @Post('unknown')
  createLogWithUnknown(@Body() dto: CreateLogInput) {
    return this.logService.createLogWithUnknown(dto);
  }

  @Get('most-search')
  @HttpCode(200)
  async getMostSearch() {
    return this.logService.getMostSearch();
  }

  @Get('id')
  @UseGuards(JwtAuthGuard)
  getLog(@Query() dto: GetLogInput) {
    return this.logService.getLog(dto.id);
  }

  @Post('my-logs')
  @UseGuards(JwtAuthGuard)
  myLogs(@Body() dto: MyLogInput, @CurrentUser() user: AuthUser) {
    return this.logService.myLogs(dto, user.id);
  }

  @Get('searched-log')
  @UseGuards(JwtAuthGuard)
  searchedData(@CurrentUser() user: AuthUser, @Query('size') size: number) {
    return this.logService.searchedData(user.id, size);
  }
}
