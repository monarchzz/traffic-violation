import 'package:flutter_boilerplate/repository/comment_repository/model/comment_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  factory CommentModel({
    required int total,
    required int pageIndex,
    required int pageSize,
    required List<CommentItemModel> items,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
