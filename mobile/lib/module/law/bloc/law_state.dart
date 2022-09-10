part of 'law_bloc.dart';

@freezed
class LawState with _$LawState {
  const factory LawState.initial() = _Initial;
  const factory LawState.success({
    required Law law,
    bool? isSaved,
    required int pageIndex,
    required List<CommentItemModel> comments,
    required bool hasNextPage,
  }) = _Success;
  const factory LawState.failure({required String error}) = _Failure;
}
