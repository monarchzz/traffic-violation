part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState.initial() = _Initial;
  const factory ChangePasswordState.invalid({
    String? oldPasswordError,
    String? newPasswordError,
    String? repeatPasswordError,
    String? error,
  }) = _Invalid;

  const factory ChangePasswordState.valid() = _Valid;
}
