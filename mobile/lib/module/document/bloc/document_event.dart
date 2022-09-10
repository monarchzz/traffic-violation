part of 'document_bloc.dart';

@freezed
class DocumentEvent with _$DocumentEvent {
  const factory DocumentEvent.started({required Reference reference}) =
      _StartedEvent;
}
