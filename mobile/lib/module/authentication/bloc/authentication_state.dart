part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.data({
    String? email,
    String? password,
    String? signUpEmail,
    String? signUpPassword,
    String? repeatPassword,
    String? name,
    String? phone,
    DateTime? birthday,
    Gender? gender,
    String? error,
    bool? success,
  }) = _Data;
}
