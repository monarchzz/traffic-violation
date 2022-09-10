part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.loading() = _LoadingState;

  const factory SearchState.success({
    required List<String> searchedItems,
    required List<String> frequentlySearchedItems,
    required List<Violation> violations,
    required List<SearchFilter> filters,
    required bool isViewAllSearchedItems,
    required int index,
    required int total,
    required int pageIndex,
    required bool hasNextPage,
    String? searchText,
    bool? searchLoading,
  }) = _SuccessState;

  const factory SearchState.failure({String? message}) = _FailureState;
}
