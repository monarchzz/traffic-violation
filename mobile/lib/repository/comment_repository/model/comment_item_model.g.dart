// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentItemModel _$$_CommentItemModelFromJson(Map<String, dynamic> json) =>
    _$_CommentItemModel(
      id: json['id'] as String,
      text: json['text'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      user: Profile.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CommentItemModelToJson(_$_CommentItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'createdAt': instance.createdAt.toIso8601String(),
      'user': instance.user,
    };
