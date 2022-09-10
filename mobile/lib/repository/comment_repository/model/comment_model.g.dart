// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CommentModel _$$_CommentModelFromJson(Map<String, dynamic> json) =>
    _$_CommentModel(
      total: json['total'] as int,
      pageIndex: json['pageIndex'] as int,
      pageSize: json['pageSize'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) => CommentItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CommentModelToJson(_$_CommentModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'pageIndex': instance.pageIndex,
      'pageSize': instance.pageSize,
      'items': instance.items,
    };
