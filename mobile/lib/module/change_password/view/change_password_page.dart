import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/di/di.dart';
import 'package:flutter_boilerplate/module/change_password/bloc/change_password_bloc.dart';
import 'package:flutter_boilerplate/module/change_password/widget/wdget.dart';
import 'package:flutter_boilerplate/module/setting/widget/widget.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChangePasswordBloc(
        authenticationRepository: getIt.get<AuthenticationRepository>(),
      )..add(const ChangePasswordEvent.started()),
      child: const ChangePasswordView(),
    );
  }
}

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({super.key});

  @override
  State<ChangePasswordView> createState() => _ChangePasswordViewState();
}

class _ChangePasswordViewState extends State<ChangePasswordView> {
  bool currentPasswordObscure = false;
  bool newPasswordObscure = false;
  bool repeatPasswordObscure = false;

  String currentPasswordText = '';
  String newPasswordText = '';
  String repeatPasswordText = '';

  @override
  void initState() {
    currentPasswordObscure = true;
    newPasswordObscure = true;
    repeatPasswordObscure = true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangePasswordBloc, ChangePasswordState>(
      listener: (context, state) {
        if (state.map(
          initial: (_) => false,
          invalid: (_) => false,
          valid: (_) => true,
        )) {
          Navigator.pop(context);
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => const AlertDialog(
              elevation: 0,
              backgroundColor: Colors.white,
              title: Text(
                'Th??ng b??o',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Palette.black,
                ),
              ),
              content: Text(
                '?????i m???t kh???u th??nh c??ng.',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Palette.black,
                ),
              ),
            ),
          );
        }
        final errorMessage = state.map(
          initial: (_) => null,
          invalid: (_) => _.error,
          valid: (_) => null,
        );
        if (errorMessage != null) {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              elevation: 0,
              backgroundColor: Colors.white,
              title: const Text(
                'Th??ng b??o',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Palette.black,
                ),
              ),
              content: Text(
                errorMessage,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Palette.black,
                ),
              ),
            ),
          );
        }
      },
      builder: (context, state) {
        final errorData = state.map(
          initial: (_) => null,
          invalid: (_) => _,
          valid: (_) => null,
        );

        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SettingAppBar(
                  onBackPressed: () {
                    Navigator.pop(context);
                  },
                  title: '?????I M???T KH???U',
                  optionTitle: 'L??u',
                  onOptionPressed: () {
                    context.read<ChangePasswordBloc>().add(
                          ChangePasswordEvent.submit(
                            oldPassword: currentPasswordText,
                            newPassword: newPasswordText,
                            repeatPassword: repeatPasswordText,
                          ),
                        );
                  },
                ),
                const Divider(),
                TextFormFieldCustom(
                  hintText: 'M???t kh???u hi???n t???i',
                  obscureText: currentPasswordObscure,
                  text: currentPasswordText,
                  onSuffixIconPressed: () {
                    setState(() {
                      currentPasswordObscure = !currentPasswordObscure;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      currentPasswordText = value;
                    });
                    context
                        .read<ChangePasswordBloc>()
                        .add(const ChangePasswordEvent.started());
                  },
                ),
                if (errorData != null && errorData.oldPasswordError != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PaddingConstants.padding3U,
                    ),
                    child: Text(
                      errorData.oldPasswordError ?? '',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Palette.error,
                      ),
                    ),
                  ),
                TextFormFieldCustom(
                  hintText: 'M???t kh???u m???i',
                  obscureText: newPasswordObscure,
                  text: newPasswordText,
                  onSuffixIconPressed: () {
                    setState(() {
                      newPasswordObscure = !newPasswordObscure;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      newPasswordText = value;
                    });
                    context
                        .read<ChangePasswordBloc>()
                        .add(const ChangePasswordEvent.started());
                  },
                ),
                if (errorData != null && errorData.newPasswordError != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PaddingConstants.padding3U,
                    ),
                    child: Text(
                      errorData.newPasswordError ?? '',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Palette.error,
                      ),
                    ),
                  ),
                TextFormFieldCustom(
                  hintText: 'Nh???p l???i m???t kh???u',
                  obscureText: repeatPasswordObscure,
                  text: repeatPasswordText,
                  onSuffixIconPressed: () {
                    setState(() {
                      repeatPasswordObscure = !repeatPasswordObscure;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      repeatPasswordText = value;
                    });
                    context
                        .read<ChangePasswordBloc>()
                        .add(const ChangePasswordEvent.started());
                  },
                ),
                if (errorData != null && errorData.repeatPasswordError != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: PaddingConstants.padding3U,
                    ),
                    child: Text(
                      errorData.repeatPasswordError ?? '',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Palette.error,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
