import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate/module/home/model/model.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_boilerplate/repository/violation_repository/violation_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.authenticationRepository,
    required this.violationRepository,
  }) : super(const _InitialState()) {
    on<_StartedEvent>(_onStated);
    on<_LoadingEvent>(_onLoading);
  }

  final AuthenticationRepository authenticationRepository;
  final ViolationRepository violationRepository;

  FutureOr<void> _onStated(_StartedEvent event, Emitter<HomeState> emit) {
    emit(const HomeState.loading());
    add(const HomeEvent.loading());
  }

  FutureOr<void> _onLoading(
      _LoadingEvent event, Emitter<HomeState> emit) async {
    // final violations = MockViolation.violations;
    // final mostSearch = MockMostSearch.mostSearch;
    final mostSearch = (await violationRepository.mostViewed())
        .map(
          success: (value) => value.value.map(
            (e) => MostSearch(
              id: e.id,
              title: e.title,
              viewCount: e.viewCount,
            ),
          ),
          error: (value) => <MostSearch>[],
        )
        .toList();

    emit(
      HomeState.success(
        mostSearch: mostSearch,
        avatar: authenticationRepository.profile?.avatar ??
            'https://zyf8i1fxrou2h83snrgcgr3a-wpengine.netdna-ssl.com/wp-content/uploads/place-holder-avatar-600x600.jpg',
      ),
    );
  }
}
