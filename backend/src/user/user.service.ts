import {
  BadRequestException,
  Injectable,
  NotFoundException,
} from '@nestjs/common';
import { PasswordService } from 'src/auth/password.service';
import { PrismaService } from 'src/prisma/prisma.service';
import { ViolationItemOutput } from 'src/violation/dto/output/violation-item.output';
import { ChangePasswordInput } from './dto/input/change-password.input';
import { UpdateUserInput } from './dto/input/update-user.input';

@Injectable()
export class UserService {
  constructor(
    private prisma: PrismaService,
    private passwordService: PasswordService,
  ) {}

  async updateUser(userId: string, newUserData: UpdateUserInput) {
    if (newUserData.name == null) newUserData.name = undefined;
    if (newUserData.phone == null) newUserData.phone = undefined;
    if (newUserData.birthday == null) newUserData.birthday = undefined;
    if (newUserData.gender == null) newUserData.gender = undefined;
    if (newUserData.avatar == null) newUserData.avatar = undefined;
    await this.prisma.user.update({
      data: newUserData,
      where: {
        id: userId,
      },
    });
  }

  async changePassword(userId: string, changePassword: ChangePasswordInput) {
    try {
      const user = await this.prisma.user.findUnique({ where: { id: userId } });
      if (!user) throw new NotFoundException('User not found');

      const passwordValid = await this.passwordService.validatePassword(
        changePassword.oldPassword,
        user.password,
      );

      if (!passwordValid) {
        throw new BadRequestException('Invalid password');
      }

      const hashedPassword = await this.passwordService.hashPassword(
        changePassword.newPassword,
      );

      await this.prisma.user.update({
        data: {
          password: hashedPassword,
        },
        where: { id: userId },
      });
    } catch (e) {
      throw e;
    }
  }

  async profile(userId: string) {
    try {
      return await this.prisma.user.findUnique({
        where: {
          id: userId,
        },
        select: {
          id: true,
          email: true,
          name: true,
          phone: true,
          birthday: true,
          gender: true,
          avatar: true,
        },
      });
    } catch (e) {
      console.log(e);
      throw new NotFoundException('User not found');
    }
  }

  async saveViolation(violationId: string, userId: string) {
    try {
      await this.prisma.user.update({
        data: {
          violationIds: {
            push: [violationId],
          },
        },
        where: {
          id: userId,
        },
      });
    } catch (e) {
      throw new NotFoundException('User not found');
    }
  }

  async unsavedViolation(violationId: string, userId: string) {
    try {
      const user = await this.prisma.user.findUnique({
        where: {
          id: userId,
        },
      });
      if (!user) throw new NotFoundException('User not found');

      const savedViolations = user.violationIds;

      const index = savedViolations.findIndex((id) => id == violationId);
      if (index >= 0) {
        savedViolations.splice(index, 1);
      }

      await this.prisma.user.update({
        where: {
          id: userId,
        },
        data: {
          violationIds: savedViolations,
        },
      });
    } catch (e) {
      throw new NotFoundException('User not found');
    }
  }

  async getSavedViolations(userId: string, size: number) {
    try {
      const user = await this.prisma.user.findUnique({
        where: {
          id: userId,
        },
        include: {
          savedViolations: true,
        },
      });
      if (!user) throw new NotFoundException('User not found');
      return user.savedViolations
        .splice(0, size)
        .map(
          (value) =>
            new ViolationItemOutput({
              id: value.id,
              title: value.title,
              viewCount: value.viewCount,
              minPenalty: value.minPenalty,
              maxPenalty: value.maxPenalty,
              affectedVehicle: value.affectedVehicle,
              createdAt: value.createdAt,
              images: value.images,
            }),
        )
        .sort((a, b) => b.createdAt.getTime() - a.createdAt.getTime());
    } catch (e) {
      throw new NotFoundException('User not found');
    }
  }

  async isViolationSaved(userId: string, violationId: string) {
    try {
      const user = await this.prisma.user.findUnique({
        where: {
          id: userId,
        },
        include: {
          savedViolations: true,
        },
      });
      if (!user) throw new NotFoundException('User not found');
      if (
        user.savedViolations.findIndex((value) => value.id == violationId) >= 0
      ) {
        return true;
      }
      return false;
    } catch (e) {
      // console.log(e);
      // throw new NotFoundException('User not found');
      return false;
    }
  }
}
