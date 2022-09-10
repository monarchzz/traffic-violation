part of 'saved_bloc.dart';

@freezed
class SavedState with _$SavedState {
  const factory SavedState.initial() = _Initial;
  const factory SavedState.success({
    required List<Violation> savedViolations,
  }) = _Success;
  const factory SavedState.failure() = _Failure;
}
