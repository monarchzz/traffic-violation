import { Body, Controller, Post, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { JwtAuthGuard } from 'src/auth/auth.guard';
import { AuthUser } from 'src/common/decorators/User';
import { CurrentUser } from 'src/common/decorators/user.decorator';
import { CreateReportInput } from './dto/input/create-report.input';
import { ReportService } from './report.service';

@ApiTags('Report')
@ApiBearerAuth()
@Controller('report')
export class ReportController {
  constructor(private readonly reportService: ReportService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  async createReport(
    @CurrentUser() user: AuthUser,
    @Body() dto: CreateReportInput,
  ) {
    return this.reportService.createReport(dto, user.id);
  }
}
