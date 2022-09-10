part of 'document_bloc.dart';

@freezed
class DocumentState with _$DocumentState {
  const factory DocumentState.initial() = _Initial;
  const factory DocumentState.success({
    required Document document,
    required Reference reference,
  }) = _Success;
  const factory DocumentState.failure({required String error}) = _Failure;
}
