// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'section_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SectionModel _$SectionModelFromJson(Map<String, dynamic> json) {
  return _SectionModel.fromJson(json);
}

/// @nodoc
mixin _$SectionModel {
  String get id => throw _privateConstructorUsedError;
  SectionType get type => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  String? get penalty => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  ReferenceModel? get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionModelCopyWith<SectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionModelCopyWith<$Res> {
  factory $SectionModelCopyWith(
          SectionModel value, $Res Function(SectionModel) then) =
      _$SectionModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      SectionType type,
      String data,
      String? penalty,
      String createdAt,
      ReferenceModel? reference});

  $ReferenceModelCopyWith<$Res>? get reference;
}

/// @nodoc
class _$SectionModelCopyWithImpl<$Res> implements $SectionModelCopyWith<$Res> {
  _$SectionModelCopyWithImpl(this._value, this._then);

  final SectionModel _value;
  // ignore: unused_field
  final $Res Function(SectionModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? data = freezed,
    Object? penalty = freezed,
    Object? createdAt = freezed,
    Object? reference = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SectionType,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      penalty: penalty == freezed
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as ReferenceModel?,
    ));
  }

  @override
  $ReferenceModelCopyWith<$Res>? get reference {
    if (_value.reference == null) {
      return null;
    }

    return $ReferenceModelCopyWith<$Res>(_value.reference!, (value) {
      return _then(_value.copyWith(reference: value));
    });
  }
}

/// @nodoc
abstract class _$$_SectionModelCopyWith<$Res>
    implements $SectionModelCopyWith<$Res> {
  factory _$$_SectionModelCopyWith(
          _$_SectionModel value, $Res Function(_$_SectionModel) then) =
      __$$_SectionModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      SectionType type,
      String data,
      String? penalty,
      String createdAt,
      ReferenceModel? reference});

  @override
  $ReferenceModelCopyWith<$Res>? get reference;
}

/// @nodoc
class __$$_SectionModelCopyWithImpl<$Res>
    extends _$SectionModelCopyWithImpl<$Res>
    implements _$$_SectionModelCopyWith<$Res> {
  __$$_SectionModelCopyWithImpl(
      _$_SectionModel _value, $Res Function(_$_SectionModel) _then)
      : super(_value, (v) => _then(v as _$_SectionModel));

  @override
  _$_SectionModel get _value => super._value as _$_SectionModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? data = freezed,
    Object? penalty = freezed,
    Object? createdAt = freezed,
    Object? reference = freezed,
  }) {
    return _then(_$_SectionModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SectionType,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      penalty: penalty == freezed
          ? _value.penalty
          : penalty // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      reference: reference == freezed
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as ReferenceModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SectionModel implements _SectionModel {
  _$_SectionModel(
      {required this.id,
      required this.type,
      required this.data,
      this.penalty,
      required this.createdAt,
      this.reference});

  factory _$_SectionModel.fromJson(Map<String, dynamic> json) =>
      _$$_SectionModelFromJson(json);

  @override
  final String id;
  @override
  final SectionType type;
  @override
  final String data;
  @override
  final String? penalty;
  @override
  final String createdAt;
  @override
  final ReferenceModel? reference;

  @override
  String toString() {
    return 'SectionModel(id: $id, type: $type, data: $data, penalty: $penalty, createdAt: $createdAt, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SectionModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.penalty, penalty) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.reference, reference));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(penalty),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(reference));

  @JsonKey(ignore: true)
  @override
  _$$_SectionModelCopyWith<_$_SectionModel> get copyWith =>
      __$$_SectionModelCopyWithImpl<_$_SectionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionModelToJson(
      this,
    );
  }
}

abstract class _SectionModel implements SectionModel {
  factory _SectionModel(
      {required final String id,
      required final SectionType type,
      required final String data,
      final String? penalty,
      required final String createdAt,
      final ReferenceModel? reference}) = _$_SectionModel;

  factory _SectionModel.fromJson(Map<String, dynamic> json) =
      _$_SectionModel.fromJson;

  @override
  String get id;
  @override
  SectionType get type;
  @override
  String get data;
  @override
  String? get penalty;
  @override
  String get createdAt;
  @override
  ReferenceModel? get reference;
  @override
  @JsonKey(ignore: true)
  _$$_SectionModelCopyWith<_$_SectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
