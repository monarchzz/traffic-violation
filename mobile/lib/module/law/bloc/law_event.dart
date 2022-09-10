part of 'law_bloc.dart';

@freezed
class LawEvent with _$LawEvent {
  const factory LawEvent.started({String? violationId}) = _StartedEvent;
  const factory LawEvent.saveViolation() = _SaveViolationEvent;
  const factory LawEvent.comment({
    required String text,
    required String violationId,
  }) = _CommentEvent;
  const factory LawEvent.nextPage() = _NextPageEvent;
}
