import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate/common/model/model.dart';
import 'package:flutter_boilerplate/module/home/bloc/mock.dart';
import 'package:flutter_boilerplate/repository/violation_repository/violation_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saved_bloc.freezed.dart';
part 'saved_event.dart';
part 'saved_state.dart';

class SavedBloc extends Bloc<SavedEvent, SavedState> {
  SavedBloc({
    required this.violationRepository,
  }) : super(const SavedState.initial()) {
    on<_StartedEvent>(_onStarted);
    on<_SearchEvent>(_onSearch);
  }

  final ViolationRepository violationRepository;

  FutureOr<void> _onStarted(
    _StartedEvent event,
    Emitter<SavedState> emit,
  ) async {
    final violations = (await violationRepository.getSavedViolation(100))
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
    emit(SavedState.success(savedViolations: violations));
  }

  FutureOr<void> _onSearch(_SearchEvent event, Emitter<SavedState> emit) async {
    final text = event.value;

    final violations = (await violationRepository.getSavedViolation(100))
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
        .where(
          (element) => element.title.contains(text),
        );

    emit((state as _Success).copyWith(savedViolations: violations.toList()));
  }
}
