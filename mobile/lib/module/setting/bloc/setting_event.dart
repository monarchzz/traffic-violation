part of 'setting_bloc.dart';

@freezed
class SettingEvent with _$SettingEvent {
  const factory SettingEvent.started() = _StartedEvent;
  const factory SettingEvent.update(ChangeType type, dynamic data) =
      _UpdateEvent;
  const factory SettingEvent.logout() = _LogoutEvent;
}
