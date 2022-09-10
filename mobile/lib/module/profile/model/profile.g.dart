// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      avatar: json['avatar'] as String,
      phone: json['phone'] as String,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
    );

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'avatar': instance.avatar,
      'phone': instance.phone,
      'birthday': instance.birthday?.toIso8601String(),
      'gender': _$GenderEnumMap[instance.gender],
    };

const _$GenderEnumMap = {
  Gender.male: 'MALE',
  Gender.female: 'FEMALE',
};
