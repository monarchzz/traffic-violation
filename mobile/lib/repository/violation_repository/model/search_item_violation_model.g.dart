// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_item_violation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SearchItemViolationModel _$$_SearchItemViolationModelFromJson(
        Map<String, dynamic> json) =>
    _$_SearchItemViolationModel(
      id: json['id'] as String,
      title: json['title'] as String,
      viewCount: json['viewCount'] as int,
      minPenalty: json['minPenalty'] as int,
      maxPenalty: json['maxPenalty'] as int,
      affectedVehicle: $enumDecode(_$VehicleEnumMap, json['affectedVehicle']),
      createdAt: json['createdAt'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_SearchItemViolationModelToJson(
        _$_SearchItemViolationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'viewCount': instance.viewCount,
      'minPenalty': instance.minPenalty,
      'maxPenalty': instance.maxPenalty,
      'affectedVehicle': _$VehicleEnumMap[instance.affectedVehicle]!,
      'createdAt': instance.createdAt,
      'images': instance.images,
    };

const _$VehicleEnumMap = {
  Vehicle.bike: 'BIKE',
  Vehicle.car: 'CAR',
  Vehicle.both: 'BOTH',
};
