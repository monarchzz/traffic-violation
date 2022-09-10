// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_violation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchViolationModel _$$_SearchViolationModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchViolationModel(
      total: json['total'] as int,
      pageIndex: json['pageIndex'] as int,
      pageSize: json['pageSize'] as int,
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              SearchItemViolationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchViolationModelToJson(
        _$_SearchViolationModel instance) =>
    <String, dynamic>{
      'total': instance.total,
      'pageIndex': instance.pageIndex,
      'pageSize': instance.pageSize,
      'items': instance.items,
    };
