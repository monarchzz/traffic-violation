// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_violation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetViolationModel _$$_GetViolationModelFromJson(Map<String, dynamic> json) =>
    _$_GetViolationModel(
      id: json['id'] as String,
      title: json['title'] as String,
      viewCount: json['viewCount'] as int,
      minPenalty: json['minPenalty'] as int,
      maxPenalty: json['maxPenalty'] as int,
      affectedVehicle: $enumDecode(_$VehicleEnumMap, json['affectedVehicle']),
      createdAt: json['createdAt'] as String,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => SectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_GetViolationModelToJson(
        _$_GetViolationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'viewCount': instance.viewCount,
      'minPenalty': instance.minPenalty,
      'maxPenalty': instance.maxPenalty,
      'affectedVehicle': _$VehicleEnumMap[instance.affectedVehicle]!,
      'createdAt': instance.createdAt,
      'sections': instance.sections,
      'images': instance.images,
    };

const _$VehicleEnumMap = {
  Vehicle.bike: 'BIKE',
  Vehicle.car: 'CAR',
  Vehicle.both: 'BOTH',
};
