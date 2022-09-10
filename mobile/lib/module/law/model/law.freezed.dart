// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'law.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Law _$LawFromJson(Map<String, dynamic> json) {
  return _Law.fromJson(json);
}

/// @nodoc
mixin _$Law {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  int get minPenalty => throw _privateConstructorUsedError;
  int get maxPenalty => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  List<Section> get sections => throw _privateConstructorUsedError;
  Vehicle get affectedVehicle => throw _privateConstructorUsedError;
  String? get category => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LawCopyWith<Law> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LawCopyWith<$Res> {
  factory $LawCopyWith(Law value, $Res Function(Law) then) =
      _$LawCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      int viewCount,
      int minPenalty,
      int maxPenalty,
      String createdAt,
      List<Section> sections,
      Vehicle affectedVehicle,
      String? category,
      List<String> images});
}

/// @nodoc
class _$LawCopyWithImpl<$Res> implements $LawCopyWith<$Res> {
  _$LawCopyWithImpl(this._value, this._then);

  final Law _value;
  // ignore: unused_field
  final $Res Function(Law) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? viewCount = freezed,
    Object? minPenalty = freezed,
    Object? maxPenalty = freezed,
    Object? createdAt = freezed,
    Object? sections = freezed,
    Object? affectedVehicle = freezed,
    Object? category = freezed,
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
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      minPenalty: minPenalty == freezed
          ? _value.minPenalty
          : minPenalty // ignore: cast_nullable_to_non_nullable
              as int,
      maxPenalty: maxPenalty == freezed
          ? _value.maxPenalty
          : maxPenalty // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      sections: sections == freezed
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
      affectedVehicle: affectedVehicle == freezed
          ? _value.affectedVehicle
          : affectedVehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_LawCopyWith<$Res> implements $LawCopyWith<$Res> {
  factory _$$_LawCopyWith(_$_Law value, $Res Function(_$_Law) then) =
      __$$_LawCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      int viewCount,
      int minPenalty,
      int maxPenalty,
      String createdAt,
      List<Section> sections,
      Vehicle affectedVehicle,
      String? category,
      List<String> images});
}

/// @nodoc
class __$$_LawCopyWithImpl<$Res> extends _$LawCopyWithImpl<$Res>
    implements _$$_LawCopyWith<$Res> {
  __$$_LawCopyWithImpl(_$_Law _value, $Res Function(_$_Law) _then)
      : super(_value, (v) => _then(v as _$_Law));

  @override
  _$_Law get _value => super._value as _$_Law;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? viewCount = freezed,
    Object? minPenalty = freezed,
    Object? maxPenalty = freezed,
    Object? createdAt = freezed,
    Object? sections = freezed,
    Object? affectedVehicle = freezed,
    Object? category = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_Law(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      viewCount: viewCount == freezed
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      minPenalty: minPenalty == freezed
          ? _value.minPenalty
          : minPenalty // ignore: cast_nullable_to_non_nullable
              as int,
      maxPenalty: maxPenalty == freezed
          ? _value.maxPenalty
          : maxPenalty // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      sections: sections == freezed
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>,
      affectedVehicle: affectedVehicle == freezed
          ? _value.affectedVehicle
          : affectedVehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Law implements _Law {
  _$_Law(
      {required this.id,
      required this.title,
      required this.viewCount,
      required this.minPenalty,
      required this.maxPenalty,
      required this.createdAt,
      required final List<Section> sections,
      required this.affectedVehicle,
      this.category,
      required final List<String> images})
      : _sections = sections,
        _images = images;

  factory _$_Law.fromJson(Map<String, dynamic> json) => _$$_LawFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final int viewCount;
  @override
  final int minPenalty;
  @override
  final int maxPenalty;
  @override
  final String createdAt;
  final List<Section> _sections;
  @override
  List<Section> get sections {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  final Vehicle affectedVehicle;
  @override
  final String? category;
  final List<String> _images;
  @override
  List<String> get images {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  String toString() {
    return 'Law(id: $id, title: $title, viewCount: $viewCount, minPenalty: $minPenalty, maxPenalty: $maxPenalty, createdAt: $createdAt, sections: $sections, affectedVehicle: $affectedVehicle, category: $category, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Law &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount) &&
            const DeepCollectionEquality()
                .equals(other.minPenalty, minPenalty) &&
            const DeepCollectionEquality()
                .equals(other.maxPenalty, maxPenalty) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other._sections, _sections) &&
            const DeepCollectionEquality()
                .equals(other.affectedVehicle, affectedVehicle) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(viewCount),
      const DeepCollectionEquality().hash(minPenalty),
      const DeepCollectionEquality().hash(maxPenalty),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(_sections),
      const DeepCollectionEquality().hash(affectedVehicle),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  _$$_LawCopyWith<_$_Law> get copyWith =>
      __$$_LawCopyWithImpl<_$_Law>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LawToJson(
      this,
    );
  }
}

abstract class _Law implements Law {
  factory _Law(
      {required final String id,
      required final String title,
      required final int viewCount,
      required final int minPenalty,
      required final int maxPenalty,
      required final String createdAt,
      required final List<Section> sections,
      required final Vehicle affectedVehicle,
      final String? category,
      required final List<String> images}) = _$_Law;

  factory _Law.fromJson(Map<String, dynamic> json) = _$_Law.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get viewCount;
  @override
  int get minPenalty;
  @override
  int get maxPenalty;
  @override
  String get createdAt;
  @override
  List<Section> get sections;
  @override
  Vehicle get affectedVehicle;
  @override
  String? get category;
  @override
  List<String> get images;
  @override
  @JsonKey(ignore: true)
  _$$_LawCopyWith<_$_Law> get copyWith => throw _privateConstructorUsedError;
}
