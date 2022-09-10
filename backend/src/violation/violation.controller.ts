import { Body, Controller, Get, HttpCode, Post, Query } from '@nestjs/common';
import { ApiTags } from '@nestjs/swagger';
import { GetAllViolationInput } from './dto/input/get-all-violation.input';
import { GetViolationInput } from './dto/input/get-violation.input';
import { SearchViolation } from './dto/input/search-violation.input';
import { ViolationService } from './violation.service';

@ApiTags('Violation')
@Controller('violation')
export class ViolationController {
  constructor(private readonly violationService: ViolationService) {}

  @Post('search')
  @HttpCode(200)
  search(@Body() dto: SearchViolation) {
    return this.violationService.search(dto);
  }

  @Get()
  getViolation(@Query() dto: GetViolationInput) {
    return this.violationService.getViolation(dto.id);
  }

  @Post('all')
  @HttpCode(200)
  getAll(@Body() dto: GetAllViolationInput) {
    return this.violationService.getAll(dto);
  }

  @Post('seed')
  @HttpCode(200)
  seed() {
    return this.violationService.seed();
  }

  @Get('most-viewed')
  @HttpCode(200)
  mostViewed() {
    return this.violationService.mostViewed();
  }
}
