// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Reference _$$_ReferenceFromJson(Map<String, dynamic> json) => _$_Reference(
      id: json['id'] as String,
      startIndex: json['startIndex'] as int,
      endIndex: json['endIndex'] as int,
      title: json['title'] as String,
      createdAt: json['createdAt'] as String,
      documentId: json['documentId'] as String?,
    );

Map<String, dynamic> _$$_ReferenceToJson(_$_Reference instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startIndex': instance.startIndex,
      'endIndex': instance.endIndex,
      'title': instance.title,
      'createdAt': instance.createdAt,
      'documentId': instance.documentId,
    };
