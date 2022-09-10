part of 'setting_bloc.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial() = _Initial;
  const factory SettingState.success({
    required Profile profile,
    Gender? gender,
  }) = _Success;
  const factory SettingState.error({
    required String error,
    required Profile profile,
  }) = _Error;
}
