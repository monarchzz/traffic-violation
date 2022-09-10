import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/module/profile/model/model.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({required this.authenticationRepository})
      : super(const AuthenticationState.initial()) {
    on<_StartedEvent>(_onStarted);
    on<_LoginSubmit>(_onLoginSubmit);
    on<_SignUpSubmit>(_onSignUpSubmit);
    on<_UpdateEvent>(_onUpdateData);
  }

  final AuthenticationRepository authenticationRepository;

  FutureOr<void> _onStarted(
    _StartedEvent event,
    Emitter<AuthenticationState> emit,
  ) {}

  FutureOr<void> _onLoginSubmit(
    _LoginSubmit event,
    Emitter<AuthenticationState> emit,
  ) async {
    final isLoginSuccess =
        await authenticationRepository.login(event.email, event.password);
    if (isLoginSuccess) return emit((state as _Data).copyWith(success: true));
    emit((state as _Data)
        .copyWith(error: 'Tên đăng nhập hoặc mật khẩu không chính xác.'));
  }

  FutureOr<void> _onSignUpSubmit(
    _SignUpSubmit event,
    Emitter<AuthenticationState> emit,
  ) async {
    final isLoginSuccess = await authenticationRepository.signUp(
      email: event.email,
      password: event.password,
      name: event.name,
      birthday: event.birthday,
      gender: event.gender,
      phone: event.phone,
    );
    if (isLoginSuccess) return emit((state as _Data).copyWith(success: true));
    emit((state as _Data).copyWith(error: 'Lỗi khi tạo tài khoản.'));
  }

  FutureOr<void> _onUpdateData(
    _UpdateEvent event,
    Emitter<AuthenticationState> emit,
  ) {
    final oldState = state.map(initial: (_) => null, data: (_) => _);

    if (oldState == null) {
      emit(
        AuthenticationState.data(
          email: event.email,
          password: event.password,
          signUpEmail: event.signUpEmail,
          signUpPassword: event.signUpPassword,
          repeatPassword: event.repeatPassword,
          name: event.name,
          phone: event.phone,
          birthday: event.birthday,
          gender: event.gender,
        ),
      );
    } else {
      emit(
        AuthenticationState.data(
          email: event.email ?? oldState.email,
          password: event.password ?? oldState.password,
          signUpEmail: event.signUpEmail ?? oldState.signUpEmail,
          signUpPassword: event.signUpPassword ?? oldState.signUpPassword,
          repeatPassword: event.repeatPassword ?? oldState.repeatPassword,
          name: event.name ?? oldState.name,
          phone: event.phone ?? oldState.phone,
          birthday: event.birthday ?? oldState.birthday,
          gender: event.gender ?? oldState.gender,
        ),
      );
    }
  }
}
