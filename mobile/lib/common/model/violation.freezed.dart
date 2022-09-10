// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'violation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Violation _$ViolationFromJson(Map<String, dynamic> json) {
  return _Violation.fromJson(json);
}

/// @nodoc
mixin _$Violation {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Vehicle get affectedVehicle => throw _privateConstructorUsedError;
  int get minPenalty => throw _privateConstructorUsedError;
  int get maxPenalty => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ViolationCopyWith<Violation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ViolationCopyWith<$Res> {
  factory $ViolationCopyWith(Violation value, $Res Function(Violation) then) =
      _$ViolationCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      Vehicle affectedVehicle,
      int minPenalty,
      int maxPenalty,
      List<String> images});
}

/// @nodoc
class _$ViolationCopyWithImpl<$Res> implements $ViolationCopyWith<$Res> {
  _$ViolationCopyWithImpl(this._value, this._then);

  final Violation _value;
  // ignore: unused_field
  final $Res Function(Violation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? affectedVehicle = freezed,
    Object? minPenalty = freezed,
    Object? maxPenalty = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      affectedVehicle: affectedVehicle == freezed
          ? _value.affectedVehicle
          : affectedVehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      minPenalty: minPenalty == freezed
          ? _value.minPenalty
          : minPenalty // ignore: cast_nullable_to_non_nullable
              as int,
      maxPenalty: maxPenalty == freezed
          ? _value.maxPenalty
          : maxPenalty // ignore: cast_nullable_to_non_nullable
              as int,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_ViolationCopyWith<$Res> implements $ViolationCopyWith<$Res> {
  factory _$$_ViolationCopyWith(
          _$_Violation value, $Res Function(_$_Violation) then) =
      __$$_ViolationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      Vehicle affectedVehicle,
      int minPenalty,
      int maxPenalty,
      List<String> images});
}

/// @nodoc
class __$$_ViolationCopyWithImpl<$Res> extends _$ViolationCopyWithImpl<$Res>
    implements _$$_ViolationCopyWith<$Res> {
  __$$_ViolationCopyWithImpl(
      _$_Violation _value, $Res Function(_$_Violation) _then)
      : super(_value, (v) => _then(v as _$_Violation));

  @override
  _$_Violation get _value => super._value as _$_Violation;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? affectedVehicle = freezed,
    Object? minPenalty = freezed,
    Object? maxPenalty = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_Violation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      affectedVehicle: affectedVehicle == freezed
          ? _value.affectedVehicle
          : affectedVehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      minPenalty: minPenalty == freezed
          ? _value.minPenalty
          : minPenalty // ignore: cast_nullable_to_non_nullable
              as int,
      maxPenalty: maxPenalty == freezed
          ? _value.maxPenalty
          : maxPenalty // ignore: cast_nullable_to_non_nullable
              as int,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Violation implements _Violation {
  _$_Violation(
      {required this.id,
      required this.title,
      required this.affectedVehicle,
      required this.minPenalty,
      required this.maxPenalty,
      required final List<String> images})
      : _images = images;

  factory _$_Violation.fromJson(Map<String, dynamic> json) =>
      _$$_ViolationFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final Vehicle affectedVehicle;
  @override
  final int minPenalty;
  @override
  final int maxPenalty;
  final List<String> _images;
  @override
  List<String> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Violation(id: $id, title: $title, affectedVehicle: $affectedVehicle, minPenalty: $minPenalty, maxPenalty: $maxPenalty, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Violation &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.affectedVehicle, affectedVehicle) &&
            const DeepCollectionEquality()
                .equals(other.minPenalty, minPenalty) &&
            const DeepCollectionEquality()
                .equals(other.maxPenalty, maxPenalty) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(affectedVehicle),
      const DeepCollectionEquality().hash(minPenalty),
      const DeepCollectionEquality().hash(maxPenalty),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  _$$_ViolationCopyWith<_$_Violation> get copyWith =>
      __$$_ViolationCopyWithImpl<_$_Violation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ViolationToJson(
      this,
    );
  }
}

abstract class _Violation implements Violation {
  factory _Violation(
      {required final String id,
      required final String title,
      required final Vehicle affectedVehicle,
      required final int minPenalty,
      required final int maxPenalty,
      required final List<String> images}) = _$_Violation;

  factory _Violation.fromJson(Map<String, dynamic> json) =
      _$_Violation.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  Vehicle get affectedVehicle;
  @override
  int get minPenalty;
  @override
  int get maxPenalty;
  @override
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$_ViolationCopyWith<_$_Violation> get copyWith =>
      throw _privateConstructorUsedError;
}
