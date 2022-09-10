import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/model/violation.dart';
import 'package:flutter_boilerplate/module/search/model/model.dart';
import 'package:flutter_boilerplate/repository/log_repository/log_repository.dart';
import 'package:flutter_boilerplate/repository/violation_repository/violation_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({
    required this.violationRepository,
    required this.logRepository,
  }) : super(const SearchState.loading()) {
    on<_StartedEvent>(_onStarted);
    on<_LoadingEvent>(_onLoading);
    on<_SearchedItemButtonPressedEvent>(_onSearchedItemButtonPressed);
    on<_HideSearchedItemButtonPressedEvent>(_onHideSearchedItemButtonPressed);
    on<_SearchEvent>(_onSearch);
    on<_PopEvent>(_onPop);
    on<_FilterEvent>(_onFilter);
    on<_SearchMoreEvent>(_onSearchMore);
  }

  final ViolationRepository violationRepository;
  final LogRepository logRepository;

  FutureOr<void> _onStarted(_StartedEvent event, Emitter<SearchState> emit) {
    emit(const SearchState.loading());
    add(const SearchEvent.loading());
  }

  FutureOr<void> _onLoading(
    _LoadingEvent event,
    Emitter<SearchState> emit,
  ) async {
    // final searchedItems = MockSearch.searchedItems.sublist(0, searchLength);
    // final frequentlySearchedItems =
    // MockSearch.frequentlySearchedItems.sublist(0, searchLength);

    final frequentlySearchedItems = (await logRepository.mostSearch()).map(
      success: (value) => value.value,
      error: (_) => <String>[],
    );

    final searchedItems = (await logRepository.searchedLog(searchLength)).map(
      success: (value) => value.value,
      error: (_) => <String>[],
    );

    emit(
      SearchState.success(
        searchedItems: searchedItems,
        frequentlySearchedItems: frequentlySearchedItems.length > searchLength
            ? frequentlySearchedItems.sublist(0, searchLength)
            : frequentlySearchedItems,
        violations: [],
        filters: [],
        isViewAllSearchedItems: false,
        index: 0,
        total: 0,
        hasNextPage: false,
        pageIndex: 1,
      ),
    );
  }

  FutureOr<void> _onSearchedItemButtonPressed(
    _SearchedItemButtonPressedEvent event,
    Emitter<SearchState> emit,
  ) async {
    // final searchedItems = MockSearch.searchedItems;

    final searchedItems =
        (await logRepository.searchedLog(maxSearchLength)).map(
      success: (value) => value.value,
      error: (_) => <String>[],
    );

    emit(
      SearchState.success(
        searchedItems: searchedItems,
        frequentlySearchedItems:
            (state as _SuccessState).frequentlySearchedItems,
        violations: [],
        filters: [],
        isViewAllSearchedItems: true,
        index: 0,
        total: 0,
        hasNextPage: false,
        pageIndex: 1,
      ),
    );
  }

  FutureOr<void> _onHideSearchedItemButtonPressed(
    _HideSearchedItemButtonPressedEvent event,
    Emitter<SearchState> emit,
  ) async {
    // final searchedItems = MockSearch.searchedItems.sublist(0, searchLength);

    // final searchedItems = (await logRepository.searchedLog()).map(
    //   success: (value) => value.value,
    //   error: (_) => <String>[],
    // );

    final searchedItems = (state as _SuccessState).searchedItems;

    emit(
      SearchState.success(
        searchedItems: searchedItems.length > searchLength
            ? searchedItems.sublist(0, searchLength)
            : searchedItems,
        frequentlySearchedItems:
            (state as _SuccessState).frequentlySearchedItems,
        violations: [],
        filters: [],
        isViewAllSearchedItems: false,
        index: 0,
        total: 0,
        hasNextPage: false,
        pageIndex: 1,
      ),
    );
  }

  FutureOr<void> _onSearch(
    _SearchEvent event,
    Emitter<SearchState> emit,
  ) async {
    // final violations = MockViolation.violations;
    emit(
      (state as _SuccessState).copyWith(
        index: 1,
        violations: [],
        filters: [],
        searchText: event.value,
        searchLoading: true,
        total: 0,
        hasNextPage: false,
        pageIndex: 1,
      ),
    );

    final result = (await violationRepository.search(
      keyword: event.value,
      pageIndex: 1,
    ))
        .map(
      success: (value) {
        return value.value;
      },
      error: (_) => null,
    );
    if (result == null) {
      emit(const SearchState.failure());
    } else {
      final hasNextPage =
          _hasNextIndex(result.total, result.pageIndex, result.pageSize);
      final violations = result.items
          .map(
            (e) => Violation(
              id: e.id,
              title: e.title,
              affectedVehicle: e.affectedVehicle,
              minPenalty: e.minPenalty,
              maxPenalty: e.maxPenalty,
              images: e.images,
            ),
          )
          .toList();
      emit(
        (state as _SuccessState).copyWith(
          index: 1,
          violations: violations,
          filters: [],
          searchText: event.value,
          searchLoading: false,
          total: result.total,
          hasNextPage: hasNextPage,
          pageIndex: 1,
        ),
      );
    }

    await logRepository.saveSearchLog(event.value, LogType.search);
  }

  FutureOr<void> _onPop(_PopEvent event, Emitter<SearchState> emit) async {
    // emit((state as _SuccessState).copyWith(index: 0));

    final frequentlySearchedItems = (await logRepository.mostSearch()).map(
      success: (value) => value.value,
      error: (_) => <String>[],
    );

    final searchedItems = (await logRepository.searchedLog(searchLength)).map(
      success: (value) => value.value,
      error: (_) => <String>[],
    );
    emit(
      (state as _SuccessState).copyWith(
        searchedItems: searchedItems,
        frequentlySearchedItems: frequentlySearchedItems.length > searchLength
            ? frequentlySearchedItems.sublist(0, searchLength)
            : frequentlySearchedItems,
        index: 0,
      ),
    );
  }

  FutureOr<void> _onFilter(
    _FilterEvent event,
    Emitter<SearchState> emit,
  ) async {
    final filters = event.filters;
    final oldState = state as _SuccessState;

    Vehicle? affectedVehicle;

    final affectedVehicleIndex = filters
        .indexWhere((element) => element.filterType == FilterType.vehicle);
    if (affectedVehicleIndex < 0) {
      affectedVehicle = null;
    } else {
      affectedVehicle = filters[affectedVehicleIndex].affectedVehicle;
    }

    int? minPenalty;
    int? maxPenalty;
    final penaltyIndex = filters
        .indexWhere((element) => element.filterType == FilterType.penalty);
    if (penaltyIndex > 0) {
      if (filters[penaltyIndex].isAllPenalty == null ||
          filters[penaltyIndex].isAllPenalty == false) {
        minPenalty = filters[penaltyIndex].minPenalty;
        maxPenalty = filters[penaltyIndex].maxPenalty;
      }
    }

    final result = (await violationRepository.search(
      keyword: oldState.searchText ?? '',
      affectedVehicle: affectedVehicle,
      maxPenalty: maxPenalty,
      minPenalty: minPenalty,
      pageIndex: 1,
    ))
        .map(
      success: (value) {
        return value.value;
      },
      error: (_) => null,
    );

    if (result == null) {
      emit(const SearchState.failure());
    } else {
      final hasNextPage =
          _hasNextIndex(result.total, result.pageIndex, result.pageSize);

      final violations = result.items
          .map(
            (e) => Violation(
              id: e.id,
              title: e.title,
              affectedVehicle: e.affectedVehicle,
              minPenalty: e.minPenalty,
              maxPenalty: e.maxPenalty,
              images: e.images,
            ),
          )
          .toList();
      emit(
        (state as _SuccessState).copyWith(
          violations: violations,
          filters: filters,
          pageIndex: 1,
          total: result.total,
          hasNextPage: hasNextPage,
        ),
      );
    }
  }

  FutureOr<void> _onSearchMore(
    _SearchMoreEvent event,
    Emitter<SearchState> emit,
  ) async {
    final oldState = state as _SuccessState;
    final filters = oldState.filters;
    if (oldState.hasNextPage == false) return;

    Vehicle? affectedVehicle;

    final affectedVehicleIndex = filters
        .indexWhere((element) => element.filterType == FilterType.vehicle);
    if (affectedVehicleIndex < 0) {
      affectedVehicle = null;
    } else {
      affectedVehicle = filters[affectedVehicleIndex].affectedVehicle;
    }

    int? minPenalty;
    int? maxPenalty;
    final penaltyIndex = filters
        .indexWhere((element) => element.filterType == FilterType.penalty);
    if (penaltyIndex > 0) {
      if (filters[penaltyIndex].isAllPenalty == null ||
          filters[penaltyIndex].isAllPenalty == false) {
        minPenalty = filters[penaltyIndex].minPenalty;
        maxPenalty = filters[penaltyIndex].maxPenalty;
      }
    }

    final result = (await violationRepository.search(
      keyword: oldState.searchText ?? '',
      affectedVehicle: affectedVehicle,
      maxPenalty: maxPenalty,
      minPenalty: minPenalty,
      pageIndex: oldState.pageIndex + 1,
    ))
        .map(
      success: (value) {
        return value.value;
      },
      error: (_) => null,
    );

    if (result == null) {
      emit(const SearchState.failure());
    } else {
      final hasNextPage =
          _hasNextIndex(result.total, result.pageIndex, result.pageSize);
      final violations = result.items
          .map(
            (e) => Violation(
              id: e.id,
              title: e.title,
              affectedVehicle: e.affectedVehicle,
              minPenalty: e.minPenalty,
              maxPenalty: e.maxPenalty,
              images: e.images,
            ),
          )
          .toList();
      emit(
        (state as _SuccessState).copyWith(
          violations: [...oldState.violations, ...violations],
          filters: filters,
          pageIndex: oldState.pageIndex + 1,
          total: result.total,
          hasNextPage: hasNextPage,
        ),
      );
    }
  }

  bool _hasNextIndex(int total, int pageIndex, int pageSize) {
    return total > pageIndex * pageIndex;
  }
}
