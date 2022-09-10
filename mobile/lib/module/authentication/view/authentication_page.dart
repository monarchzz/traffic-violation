import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/app/route.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/di/di.dart';
import 'package:flutter_boilerplate/common/widget/loading_dialog.dart';
import 'package:flutter_boilerplate/common/widget/widget.dart';
import 'package:flutter_boilerplate/module/authentication/bloc/authentication_bloc.dart';
import 'package:flutter_boilerplate/module/profile/model/model.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:intl/intl.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthenticationBloc(
        authenticationRepository: getIt.get<AuthenticationRepository>(),
      )..add(const AuthenticationEvent.started()),
      child: const AuthenticationView(),
    );
  }
}

class AuthenticationView extends StatefulWidget {
  const AuthenticationView({super.key});

  @override
  State<AuthenticationView> createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends State<AuthenticationView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int index = 0;
  bool loginPasswordObscureText = true;
  bool signUpPasswordObscureText = true;
  bool repeatPasswordObscureText = true;
  DateTime? birthdayState;

  void _onFormDataChanged() {
    setState(() {
      index = _tabController.index;
    });
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _tabController
      ..addListener(_onFormDataChanged)
      ..index = index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        final error = state.map(initial: (_) => null, data: (_) => _.error);
        final success = state.map(initial: (_) => null, data: (_) => _.success);

        if (error != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(error),
            ),
          );
          Navigator.pop(context);
        }
        if (success != null) {
          Navigator.pop(context);
          Navigator.pushNamedAndRemoveUntil(
            context,
            RouteName.home,
            (route) => false,
          );
        }
      },
      builder: (context, state) {
        final email = state.map(initial: (_) => null, data: (_) => _.email);
        final password =
            state.map(initial: (_) => null, data: (_) => _.password);
        final signUpEmail =
            state.map(initial: (_) => null, data: (_) => _.signUpEmail);
        final signUpPassword =
            state.map(initial: (_) => null, data: (_) => _.signUpPassword);
        final repeatPassword =
            state.map(initial: (_) => null, data: (_) => _.repeatPassword);
        final name = state.map(initial: (_) => null, data: (_) => _.name);
        final phone = state.map(initial: (_) => null, data: (_) => _.phone);
        final birthday =
            state.map(initial: (_) => null, data: (_) => _.birthday);
        final gender = state.map(initial: (_) => null, data: (_) => _.gender);

        const phoneRegex = r'^(?:[+0][1-9])?[0-9]{9,12}$';
        const emailRegex = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
        final phoneExp = RegExp(phoneRegex);
        final emailExp = RegExp(emailRegex);

        String? phoneError = '';
        String? emailError = '';
        String? signUpPasswordError = '';
        String? repeatPasswordError = '';

        if (phone != null && !phoneExp.hasMatch(phone)) {
          phoneError = 'Số điện thoại không hợp lệ';
        }
        if (signUpEmail != null && !emailExp.hasMatch(signUpEmail)) {
          emailError = 'Email thoại không hợp lệ';
        }

        if (signUpPassword != null && signUpPassword.length < 6) {
          signUpPasswordError = 'Mật khẩu phải có ít nhất 6 ký tự';
        }

        if (repeatPassword != null &&
            signUpPassword != null &&
            repeatPassword != signUpPassword) {
          repeatPasswordError = 'Mật khẩu không chính xác';
        }

        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(PaddingConstants.padding3U),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 2 * SizeConstants.size5U,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TabbarWidget(
                          tabController: _tabController,
                          tabList: const [
                            Tab(text: 'Đăng nhâp'),
                            Tab(text: 'Đăng ký')
                          ],
                          border: Border.all(
                            width: 0.5,
                            color: Palette.silver,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: SizeConstants.size4U,
                    ),
                    if (index == 0)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: PaddingConstants.padding2U,
                        ),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Tra cứu luật giao thông",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size4U),
                            TextFormField(
                              onChanged: (value) {
                                context.read<AuthenticationBloc>().add(
                                      AuthenticationEvent.updateData(
                                        email: value,
                                      ),
                                    );
                              },
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.jetBlack,
                              ),
                              initialValue: email ?? '',
                              decoration: const InputDecoration(
                                label: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Palette.jetBlack,
                                  ),
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size3U),
                            TextFormField(
                              obscureText: loginPasswordObscureText,
                              onChanged: (value) {
                                context.read<AuthenticationBloc>().add(
                                      AuthenticationEvent.updateData(
                                        password: value,
                                      ),
                                    );
                              },
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.jetBlack,
                              ),
                              initialValue: password ?? '',
                              decoration: InputDecoration(
                                label: const Text(
                                  'Mật khẩu',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Palette.jetBlack,
                                  ),
                                ),
                                border: const OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      loginPasswordObscureText =
                                          !loginPasswordObscureText;
                                    });
                                  },
                                  icon: Icon(
                                    loginPasswordObscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: SizeConstants.size3U,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size3U5),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(500, 40),
                              ),
                              onPressed: (email == null || password == null)
                                  ? null
                                  : () {
                                      loadingDialog(context);
                                      context.read<AuthenticationBloc>().add(
                                            AuthenticationEvent.loginSubmit(
                                              email: email,
                                              password: password,
                                            ),
                                          );
                                    },
                              child: const Text('Đăng nhập'),
                            ),
                          ],
                        ),
                      )
                    else
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: PaddingConstants.padding2U,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Tra cứu luật giao thông",
                                style: Theme.of(context).textTheme.headline1,
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size4U),
                            TextFormField(
                              onChanged: (value) {
                                context.read<AuthenticationBloc>().add(
                                      AuthenticationEvent.updateData(
                                        signUpEmail: value,
                                      ),
                                    );
                              },
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.jetBlack,
                              ),
                              initialValue: signUpEmail ?? '',
                              decoration: const InputDecoration(
                                label: Text(
                                  'Email',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Palette.jetBlack,
                                  ),
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size1U),
                            Text(
                              emailError,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Palette.error,
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size1U),
                            TextFormField(
                              obscureText: signUpPasswordObscureText,
                              onChanged: (value) {
                                context.read<AuthenticationBloc>().add(
                                      AuthenticationEvent.updateData(
                                        signUpPassword: value,
                                      ),
                                    );
                              },
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.jetBlack,
                              ),
                              initialValue: signUpPassword ?? '',
                              decoration: InputDecoration(
                                label: const Text(
                                  'Mật khẩu',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Palette.jetBlack,
                                  ),
                                ),
                                border: const OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      signUpPasswordObscureText =
                                          !signUpPasswordObscureText;
                                    });
                                  },
                                  icon: Icon(
                                    signUpPasswordObscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: SizeConstants.size3U,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size1U),
                            Text(
                              signUpPasswordError,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Palette.error,
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size1U),
                            TextFormField(
                              obscureText: repeatPasswordObscureText,
                              onChanged: (value) {
                                context.read<AuthenticationBloc>().add(
                                      AuthenticationEvent.updateData(
                                        repeatPassword: value,
                                      ),
                                    );
                              },
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.jetBlack,
                              ),
                              initialValue: repeatPassword ?? '',
                              decoration: InputDecoration(
                                label: const Text(
                                  'Nhập lại mật khẩu',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Palette.jetBlack,
                                  ),
                                ),
                                border: const OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      repeatPasswordObscureText =
                                          !repeatPasswordObscureText;
                                    });
                                  },
                                  icon: Icon(
                                    repeatPasswordObscureText
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    size: SizeConstants.size3U,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size1U),
                            Text(
                              repeatPasswordError,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Palette.error,
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size1U),
                            TextFormField(
                              onChanged: (value) {
                                context.read<AuthenticationBloc>().add(
                                      AuthenticationEvent.updateData(
                                        name: value,
                                      ),
                                    );
                              },
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.jetBlack,
                              ),
                              initialValue: name ?? '',
                              decoration: const InputDecoration(
                                label: Text(
                                  'Tên',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Palette.jetBlack,
                                  ),
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size3U),
                            GestureDetector(
                              onTap: () async {
                                final bloc = context.read<AuthenticationBloc>();
                                final dateTime = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1900, 1, 1, 1),
                                  lastDate: DateTime.now(),
                                  initialEntryMode:
                                      DatePickerEntryMode.calendarOnly,
                                );

                                if (dateTime != null) {
                                  bloc.add(
                                    AuthenticationEvent.updateData(
                                      birthday: dateTime,
                                    ),
                                  );
                                  setState(() {
                                    birthdayState = dateTime;
                                  });
                                }
                              },
                              child: InputDecorator(
                                decoration: const InputDecoration(
                                  labelText: 'Ngày sinh',
                                  border: OutlineInputBorder(),
                                  labelStyle: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Palette.jetBlack,
                                  ),
                                ),
                                child: Text(
                                  birthdayState == null
                                      ? ''
                                      : DateFormat('dd/MM/yyyy')
                                          .format(birthdayState!),
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Palette.jetBlack,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size3U),
                            TextFormField(
                              onChanged: (value) {
                                context.read<AuthenticationBloc>().add(
                                      AuthenticationEvent.updateData(
                                        phone: value,
                                      ),
                                    );
                              },
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Palette.jetBlack,
                              ),
                              initialValue: phone ?? '',
                              decoration: const InputDecoration(
                                label: Text(
                                  'Số điện thoại',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Palette.jetBlack,
                                  ),
                                ),
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size1U),
                            Text(
                              phoneError,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Palette.error,
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size1U),
                            InputDecorator(
                              decoration: const InputDecoration(
                                labelText: 'Giới tính',
                                border: OutlineInputBorder(),
                                labelStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Palette.jetBlack,
                                ),
                              ),
                              child: SizedBox(
                                height: 35,
                                child: DropdownButton<Gender>(
                                  isExpanded: true,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Palette.jetBlack,
                                  ),
                                  value: gender ?? Gender.male,
                                  alignment: AlignmentDirectional.centerEnd,
                                  items: [
                                    DropdownMenuItem<Gender>(
                                      value: Gender.male,
                                      child: Text(Gender.male.toName()),
                                    ),
                                    DropdownMenuItem<Gender>(
                                      value: Gender.female,
                                      child: Text(Gender.female.toName()),
                                    ),
                                  ],
                                  onChanged: (g) {
                                    context.read<AuthenticationBloc>().add(
                                          AuthenticationEvent.updateData(
                                            gender: g,
                                          ),
                                        );
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(height: SizeConstants.size3U5),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                fixedSize: const Size(500, 40),
                              ),
                              onPressed: (signUpEmail == null ||
                                      signUpPassword == null ||
                                      repeatPassword == null ||
                                      birthday == null ||
                                      phone == null ||
                                      gender == null ||
                                      emailError.isNotEmpty ||
                                      phoneError.isNotEmpty ||
                                      signUpPasswordError.isNotEmpty ||
                                      repeatPasswordError.isNotEmpty)
                                  ? null
                                  : () {
                                      context.read<AuthenticationBloc>().add(
                                            AuthenticationEvent.signUpSubmit(
                                              email: signUpEmail,
                                              password: signUpPassword,
                                              repeatPassword: repeatPassword,
                                              name: name!,
                                              phone: phone,
                                              birthday: birthday,
                                              gender: gender,
                                            ),
                                          );
                                    },
                              child: const Text('Đăng ký'),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
