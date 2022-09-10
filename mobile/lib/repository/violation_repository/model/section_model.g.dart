// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SectionModel _$$_SectionModelFromJson(Map<String, dynamic> json) =>
    _$_SectionModel(
      id: json['id'] as String,
      type: $enumDecode(_$SectionTypeEnumMap, json['type']),
      data: json['data'] as String,
      penalty: json['penalty'] as String?,
      createdAt: json['createdAt'] as String,
      reference: json['reference'] == null
          ? null
          : ReferenceModel.fromJson(json['reference'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SectionModelToJson(_$_SectionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$SectionTypeEnumMap[instance.type]!,
      'data': instance.data,
      'penalty': instance.penalty,
      'createdAt': instance.createdAt,
      'reference': instance.reference,
    };

const _$SectionTypeEnumMap = {
  SectionType.action: 'ACTION',
  SectionType.penalty: 'PENALTY',
  SectionType.extra: 'EXTRA',
  SectionType.except: 'EXCEPT',
  SectionType.note: 'NOTE',
  SectionType.related: 'RELATED',
};
