// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportModel _$$_ReportModelFromJson(Map<String, dynamic> json) =>
    _$_ReportModel(
      title: json['title'] as String,
      data: json['data'] as String,
      violationId: json['violationId'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ReportModelToJson(_$_ReportModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'data': instance.data,
      'violationId': instance.violationId,
      'images': instance.images,
    };
