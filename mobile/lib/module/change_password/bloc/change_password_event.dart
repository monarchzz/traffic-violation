part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.started() = _StartedEvent;
  const factory ChangePasswordEvent.submit({
    required String oldPassword,
    required String newPassword,
    required String repeatPassword,
  }) = _SubmitEvent;
}
