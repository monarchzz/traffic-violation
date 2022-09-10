import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/common/model/model.dart';
import 'package:flutter_boilerplate/module/profile/model/model.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_boilerplate/repository/upload/upload_repository.dart';
import 'package:flutter_boilerplate/repository/violation_repository/violation_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({
    required this.uploadRepository,
    required this.authenticationRepository,
    required this.violationRepository,
  }) : super(const ProfileState.initial()) {
    on<_StartedEvent>(_onStarted);
    on<_UpdateAvatarEvent>(_onUpdateAvatar);
  }

  final UploadRepository uploadRepository;
  final AuthenticationRepository authenticationRepository;
  final ViolationRepository violationRepository;

  FutureOr<void> _onStarted(
    _StartedEvent event,
    Emitter<ProfileState> emit,
  ) async {
    if (authenticationRepository.hasToken == false) {
      emit(const ProfileState.unauthorized());
    } else {
      final profile = authenticationRepository.profile;
      emit(ProfileState.success(profile: profile!, violations: []));
      final violations = (await violationRepository.getSavedViolation(3))
          .map(
            success: (value) => value.value.map(
              (e) => Violation(
                id: e.id,
                title: e.title,
                affectedVehicle: e.affectedVehicle,
                minPenalty: e.minPenalty,
                maxPenalty: e.maxPenalty,
                images: e.images,
              ),
            ),
            error: (_) => <Violation>[],
          )
          .toList();

      print(violations);
      emit(ProfileState.success(profile: profile, violations: violations));
    }
  }

  FutureOr<void> _onUpdateAvatar(
    _UpdateAvatarEvent event,
    Emitter<ProfileState> emit,
  ) async {
    final url = await uploadRepository.uploadAvatar(event.file);
    await authenticationRepository.selfUpdate(avatar: url);

    final oldState = state as _Success;

    emit(const ProfileState.loadingAvatar());

    emit(oldState.copyWith(profile: authenticationRepository.profile!));
  }
}
