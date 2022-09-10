// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'violation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Violation _$$_ViolationFromJson(Map<String, dynamic> json) => _$_Violation(
      id: json['id'] as String,
      title: json['title'] as String,
      affectedVehicle: $enumDecode(_$VehicleEnumMap, json['affectedVehicle']),
      minPenalty: json['minPenalty'] as int,
      maxPenalty: json['maxPenalty'] as int,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_ViolationToJson(_$_Violation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'affectedVehicle': _$VehicleEnumMap[instance.affectedVehicle]!,
      'minPenalty': instance.minPenalty,
      'maxPenalty': instance.maxPenalty,
      'images': instance.images,
    };

const _$VehicleEnumMap = {
  Vehicle.bike: 'BIKE',
  Vehicle.car: 'CAR',
  Vehicle.both: 'BOTH',
};
