part of 'saved_bloc.dart';

@freezed
class SavedEvent with _$SavedEvent {
  const factory SavedEvent.started() = _StartedEvent;
  const factory SavedEvent.search({required String value}) = _SearchEvent;
}
