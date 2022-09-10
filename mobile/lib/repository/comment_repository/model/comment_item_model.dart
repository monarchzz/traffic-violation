import 'package:flutter_boilerplate/module/profile/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_item_model.freezed.dart';
part 'comment_item_model.g.dart';

@freezed
class CommentItemModel with _$CommentItemModel {
  factory CommentItemModel({
    required String id,
    required String text,
    required DateTime createdAt,
    required Profile user,
  }) = _CommentItemModel;

  factory CommentItemModel.fromJson(Map<String, dynamic> json) =>
      _$CommentItemModelFromJson(json);
}
