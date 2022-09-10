import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc({required this.authenticationRepository})
      : super(const ChangePasswordState.initial()) {
    on<_StartedEvent>(_onStarted);
    on<_SubmitEvent>(_onSubmit);
  }

  final AuthenticationRepository authenticationRepository;

  FutureOr<void> _onStarted(
    _StartedEvent event,
    Emitter<ChangePasswordState> emit,
  ) {
    emit(const ChangePasswordState.initial());
  }

  FutureOr<void> _onSubmit(
    _SubmitEvent event,
    Emitter<ChangePasswordState> emit,
  ) async {
    final oldPassword = event.oldPassword;
    final newPassword = event.newPassword;
    final repeatPassword = event.repeatPassword;

    var isValid = true;

    //validation
    //check old password
    // emit(const ChangePasswordState.invalid(
    //     oldPasswordError: 'Mật khẩu không chính xác'));

    emit(const ChangePasswordState.initial());

    if (newPassword.length < 6) {
      emit(
        const ChangePasswordState.invalid(
          newPasswordError: 'Mật khẩu phải dài hơn 6 ký tự',
        ),
      );
      isValid = false;
      return;
    }
    if (newPassword != repeatPassword) {
      emit(
        const ChangePasswordState.invalid(
          repeatPasswordError: 'Mật khẩu không chính xác',
        ),
      );
      isValid = false;
      return;
    }
    if (isValid == true) {
      isValid = await authenticationRepository.changePassword(
        oldPassword,
        newPassword,
      );
    }

    if (isValid) {
      emit(const ChangePasswordState.valid());
    } else {
      emit(
        const ChangePasswordState.invalid(
          error: 'Mật khẩu không chính xác',
        ),
      );
    }
  }
}
