part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started() = _StartedEvent;
  const factory SearchEvent.loading() = _LoadingEvent;
  const factory SearchEvent.searchedItemButtonPressed() =
      _SearchedItemButtonPressedEvent;
  const factory SearchEvent.hideSearchedItemButtonPressed() =
      _HideSearchedItemButtonPressedEvent;
  const factory SearchEvent.search({required String value}) = _SearchEvent;
  const factory SearchEvent.pop() = _PopEvent;
  const factory SearchEvent.filter({
    required List<SearchFilter> filters,
  }) = _FilterEvent;
  const factory SearchEvent.searchMore() = _SearchMoreEvent;
}
