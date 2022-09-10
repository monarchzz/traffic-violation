// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Section _$SectionFromJson(Map<String, dynamic> json) {
  return _Section.fromJson(json);
}

/// @nodoc
mixin _$Section {
  String get id => throw _privateConstructorUsedError;
  SectionType get type => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  String? get penalty => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  Reference? get reference => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SectionCopyWith<Section> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionCopyWith<$Res> {
  factory $SectionCopyWith(Section value, $Res Function(Section) then) =
      _$SectionCopyWithImpl<$Res>;
  $Res call(
      {String id,
      SectionType type,
      String data,
      String? penalty,
      String createdAt,
      Reference? reference});

  $ReferenceCopyWith<$Res>? get reference;
}

/// @nodoc
class _$SectionCopyWithImpl<$Res> implements $SectionCopyWith<$Res> {
  _$SectionCopyWithImpl(this._value, this._then);

  final Section _value;
  // ignore: unused_field
  final $Res Function(Section) _then;

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
              as Reference?,
    ));
  }

  @override
  $ReferenceCopyWith<$Res>? get reference {
    if (_value.reference == null) {
      return null;
    }

    return $ReferenceCopyWith<$Res>(_value.reference!, (value) {
      return _then(_value.copyWith(reference: value));
    });
  }
}

/// @nodoc
abstract class _$$_SectionCopyWith<$Res> implements $SectionCopyWith<$Res> {
  factory _$$_SectionCopyWith(
          _$_Section value, $Res Function(_$_Section) then) =
      __$$_SectionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      SectionType type,
      String data,
      String? penalty,
      String createdAt,
      Reference? reference});

  @override
  $ReferenceCopyWith<$Res>? get reference;
}

/// @nodoc
class __$$_SectionCopyWithImpl<$Res> extends _$SectionCopyWithImpl<$Res>
    implements _$$_SectionCopyWith<$Res> {
  __$$_SectionCopyWithImpl(_$_Section _value, $Res Function(_$_Section) _then)
      : super(_value, (v) => _then(v as _$_Section));

  @override
  _$_Section get _value => super._value as _$_Section;

  @override
  $Res call({
    Object? id = freezed,
    Object? type = freezed,
    Object? data = freezed,
    Object? penalty = freezed,
    Object? createdAt = freezed,
    Object? reference = freezed,
  }) {
    return _then(_$_Section(
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
              as Reference?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Section implements _Section {
  _$_Section(
      {required this.id,
      required this.type,
      required this.data,
      this.penalty,
      required this.createdAt,
      this.reference});

  factory _$_Section.fromJson(Map<String, dynamic> json) =>
      _$$_SectionFromJson(json);

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
  final Reference? reference;

  @override
  String toString() {
    return 'Section(id: $id, type: $type, data: $data, penalty: $penalty, createdAt: $createdAt, reference: $reference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Section &&
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
  _$$_SectionCopyWith<_$_Section> get copyWith =>
      __$$_SectionCopyWithImpl<_$_Section>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SectionToJson(
      this,
    );
  }
}

abstract class _Section implements Section {
  factory _Section(
      {required final String id,
      required final SectionType type,
      required final String data,
      final String? penalty,
      required final String createdAt,
      final Reference? reference}) = _$_Section;

  factory _Section.fromJson(Map<String, dynamic> json) = _$_Section.fromJson;

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
  Reference? get reference;
  @override
  @JsonKey(ignore: true)
  _$$_SectionCopyWith<_$_Section> get copyWith =>
      throw _privateConstructorUsedError;
}
