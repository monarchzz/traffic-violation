// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'law.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Law _$$_LawFromJson(Map<String, dynamic> json) => _$_Law(
      id: json['id'] as String,
      title: json['title'] as String,
      viewCount: json['viewCount'] as int,
      minPenalty: json['minPenalty'] as int,
      maxPenalty: json['maxPenalty'] as int,
      createdAt: json['createdAt'] as String,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => Section.fromJson(e as Map<String, dynamic>))
          .toList(),
      affectedVehicle: $enumDecode(_$VehicleEnumMap, json['affectedVehicle']),
      category: json['category'] as String?,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_LawToJson(_$_Law instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'viewCount': instance.viewCount,
      'minPenalty': instance.minPenalty,
      'maxPenalty': instance.maxPenalty,
      'createdAt': instance.createdAt,
      'sections': instance.sections,
      'affectedVehicle': _$VehicleEnumMap[instance.affectedVehicle]!,
      'category': instance.category,
      'images': instance.images,
    };

const _$VehicleEnumMap = {
  Vehicle.bike: 'BIKE',
  Vehicle.car: 'CAR',
  Vehicle.both: 'BOTH',
};
