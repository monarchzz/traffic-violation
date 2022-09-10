import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/app/route.dart';
import 'package:flutter_boilerplate/common/di/di.dart';
import 'package:flutter_boilerplate/module/profile/model/model.dart';
import 'package:flutter_boilerplate/module/setting/bloc/setting_bloc.dart';
import 'package:flutter_boilerplate/module/setting/widget/widget.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:intl/intl.dart';

enum ChangeType { name, phone, gender, birthday }

extension ChangeTypeX on ChangeType {
  String toName() {
    switch (this) {
      case ChangeType.name:
        return 'Tên';
      case ChangeType.phone:
        return 'Số điện thoại';
      case ChangeType.gender:
        return 'Giới tính';
      case ChangeType.birthday:
        return 'Ngày sinh';
    }
  }
}

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SettingBloc(
        authenticationRepository: getIt.get<AuthenticationRepository>(),
      )..add(const SettingEvent.started()),
      child: const SettingView(),
    );
  }
}

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        void _showDialog(ChangeType type, dynamic value) {
          final bloc = BlocProvider.of<SettingBloc>(context);

          showDialog(
            context: context,
            builder: (dialogContext) {
              return CustomDialog(
                onSubmit: (value, birthday, gender) {},
                type: type,
                bloc: bloc,
                data: value,
              );
            },
          );
        }

        final profile = state.map(
          initial: (_) => null,
          success: (_) => _.profile,
          error: (_) => _.profile,
        );

        if (profile == null) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              children: [
                SettingAppBar(
                  onBackPressed: () {
                    Navigator.pop(context);
                  },
                  title: 'CÀI ĐẶT',
                ),
                const Divider(
                  height: 10,
                ),
                TextItem(
                  onTap: () {},
                  hasLeftIcon: false,
                  title: 'Email',
                  leftTitle: profile.email,
                ),
                const Divider(
                  height: 1,
                ),
                TextItem(
                  onTap: () {
                    _showDialog(ChangeType.name, profile.name);
                  },
                  hasLeftIcon: true,
                  title: 'Tên',
                  leftTitle: profile.name,
                ),
                const Divider(
                  height: 1,
                ),
                TextItem(
                  onTap: () {
                    _showDialog(ChangeType.phone, profile.phone);
                  },
                  hasLeftIcon: true,
                  title: 'Số điện thoại',
                  leftTitle: profile.phone,
                ),
                const Divider(
                  height: 1,
                ),
                TextItem(
                  onTap: () {
                    _showDialog(
                      ChangeType.gender,
                      profile.gender ?? Gender.male,
                    );
                  },
                  hasLeftIcon: true,
                  title: 'Giới tính',
                  leftTitle: profile.gender?.toName() ?? '',
                ),
                const Divider(
                  height: 1,
                ),
                TextItem(
                  onTap: () async {
                    // _showDialog(ChangeType.birthday, profile.birthday);
                    final bloc = context.read<SettingBloc>();

                    final dateTime = await showDatePicker(
                      context: context,
                      initialDate: profile.birthday ?? DateTime.now(),
                      firstDate: DateTime(1900, 1, 1, 1),
                      lastDate: DateTime.now(),
                      initialEntryMode: DatePickerEntryMode.calendarOnly,
                    );

                    bloc.add(
                      SettingEvent.update(
                        ChangeType.birthday,
                        dateTime,
                      ),
                    );
                  },
                  hasLeftIcon: true,
                  title: 'Ngày sinh',
                  leftTitle: profile.birthday == null
                      ? ''
                      : DateFormat('dd/MM/yyyy').format(profile.birthday!),
                ),
                const Divider(
                  thickness: 10,
                  height: 10,
                ),
                TextItem(
                  onTap: () {
                    Navigator.pushNamed(context, RouteName.changePassword);
                  },
                  hasLeftIcon: false,
                  title: 'Đổi mật khẩu',
                ),
                const Divider(
                  height: 1,
                ),
                TextItem(
                  onTap: () {
                    context
                        .read<SettingBloc>()
                        .add(const SettingEvent.logout());
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      RouteName.home,
                      (route) => false,
                    );
                  },
                  hasLeftIcon: false,
                  title: 'Đăng xuất',
                ),
                const Divider(
                  height: 1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
