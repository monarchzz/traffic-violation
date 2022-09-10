import { Body, Controller, Post, Put, UseGuards } from '@nestjs/common';
import { ApiBearerAuth, ApiTags } from '@nestjs/swagger';
import { JwtAuthGuard } from 'src/auth/auth.guard';
import { AuthUser } from 'src/common/decorators/User';
import { CurrentUser } from 'src/common/decorators/user.decorator';
import { CommentService } from './comment.service';
import { CreateCommentInput } from './dto/input/create-comment.input';
import { GetCommentByViolationInput } from './dto/input/get-commnet-by-violation.input';
import { UpdateCommentInput } from './dto/input/update-comment.input';

@ApiTags('Comment')
@ApiBearerAuth()
@Controller('comment')
export class CommentController {
  constructor(private readonly commentService: CommentService) {}

  @Post()
  @UseGuards(JwtAuthGuard)
  async createComment(
    @CurrentUser() user: AuthUser,
    @Body() dto: CreateCommentInput,
  ) {
    return this.commentService.createComment(dto, user.id);
  }

  @Put()
  @UseGuards(JwtAuthGuard)
  async updateComment(@Body() dto: UpdateCommentInput) {
    return this.commentService.updateComment(dto);
  }

  @Post('get-by-violation')
  @UseGuards(JwtAuthGuard)
  async getCommentByViolation(@Body() dto: GetCommentByViolationInput) {
    return this.commentService.getCommentByViolation(dto);
  }
}
