part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.started() = _StartedEvent;
  const factory AuthenticationEvent.updateData({
    String? email,
    String? password,
    String? signUpEmail,
    String? signUpPassword,
    String? repeatPassword,
    String? name,
    String? phone,
    DateTime? birthday,
    Gender? gender,
  }) = _UpdateEvent;
  const factory AuthenticationEvent.loginSubmit({
    required String email,
    required String password,
  }) = _LoginSubmit;
  const factory AuthenticationEvent.signUpSubmit({
    required String email,
    required String password,
    required String repeatPassword,
    required String name,
    required String phone,
    required DateTime birthday,
    required Gender gender,
  }) = _SignUpSubmit;
}
