import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate/module/profile/model/model.dart';
import 'package:flutter_boilerplate/module/setting/setting.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_event.dart';
part 'setting_state.dart';
part 'setting_bloc.freezed.dart';

class SettingBloc extends Bloc<SettingEvent, SettingState> {
  SettingBloc({required this.authenticationRepository})
      : super(const SettingState.initial()) {
    on<_StartedEvent>(_onStarted);
    on<_UpdateEvent>(_onUpdate);
    on<_LogoutEvent>(_onLogout);
  }

  final AuthenticationRepository authenticationRepository;

  FutureOr<void> _onStarted(_StartedEvent event, Emitter<SettingState> emit) {
    final profile = authenticationRepository.profile!;

    emit(SettingState.success(profile: profile, gender: profile.gender));
  }

  FutureOr<void> _onUpdate(
    _UpdateEvent event,
    Emitter<SettingState> emit,
  ) async {
    switch (event.type) {
      case ChangeType.name:
        await authenticationRepository.selfUpdate(name: event.data as String);
        break;
      case ChangeType.phone:
        await authenticationRepository.selfUpdate(phone: event.data as String);
        break;
      case ChangeType.gender:
        await authenticationRepository.selfUpdate(gender: event.data as Gender);
        break;
      case ChangeType.birthday:
        await authenticationRepository.selfUpdate(
          birthday: event.data as DateTime,
        );
        break;
    }

    final profile = authenticationRepository.profile!;

    emit(SettingState.success(profile: profile, gender: profile.gender));
  }

  FutureOr<void> _onLogout(
    _LogoutEvent event,
    Emitter<SettingState> emit,
  ) async {
    await authenticationRepository.logout();
  }
}
