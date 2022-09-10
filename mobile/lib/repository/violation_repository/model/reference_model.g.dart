// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReferenceModel _$$_ReferenceModelFromJson(Map<String, dynamic> json) =>
    _$_ReferenceModel(
      id: json['id'] as String,
      title: json['title'] as String,
      startIndex: json['startIndex'] as int,
      endIndex: json['endIndex'] as int,
      createdAt: json['createdAt'] as String,
      documentId: json['documentId'] as String?,
    );

Map<String, dynamic> _$$_ReferenceModelToJson(_$_ReferenceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'startIndex': instance.startIndex,
      'endIndex': instance.endIndex,
      'createdAt': instance.createdAt,
      'documentId': instance.documentId,
    };
