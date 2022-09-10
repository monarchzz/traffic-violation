import { createParamDecorator, ExecutionContext } from '@nestjs/common';
import { AuthUser } from './User';

export const CurrentUser = createParamDecorator(
  (data: unknown, ctx: ExecutionContext) => {
    const request = ctx.switchToHttp().getRequest();
    return request.user as AuthUser;
  },
);
