// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reference.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reference _$ReferenceFromJson(Map<String, dynamic> json) {
  return _Reference.fromJson(json);
}

/// @nodoc
mixin _$Reference {
  String get id => throw _privateConstructorUsedError;
  int get startIndex => throw _privateConstructorUsedError;
  int get endIndex => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get documentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferenceCopyWith<Reference> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferenceCopyWith<$Res> {
  factory $ReferenceCopyWith(Reference value, $Res Function(Reference) then) =
      _$ReferenceCopyWithImpl<$Res>;
  $Res call(
      {String id,
      int startIndex,
      int endIndex,
      String title,
      String createdAt,
      String? documentId});
}

/// @nodoc
class _$ReferenceCopyWithImpl<$Res> implements $ReferenceCopyWith<$Res> {
  _$ReferenceCopyWithImpl(this._value, this._then);

  final Reference _value;
  // ignore: unused_field
  final $Res Function(Reference) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? startIndex = freezed,
    Object? endIndex = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? documentId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startIndex: startIndex == freezed
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      endIndex: endIndex == freezed
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      documentId: documentId == freezed
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ReferenceCopyWith<$Res> implements $ReferenceCopyWith<$Res> {
  factory _$$_ReferenceCopyWith(
          _$_Reference value, $Res Function(_$_Reference) then) =
      __$$_ReferenceCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      int startIndex,
      int endIndex,
      String title,
      String createdAt,
      String? documentId});
}

/// @nodoc
class __$$_ReferenceCopyWithImpl<$Res> extends _$ReferenceCopyWithImpl<$Res>
    implements _$$_ReferenceCopyWith<$Res> {
  __$$_ReferenceCopyWithImpl(
      _$_Reference _value, $Res Function(_$_Reference) _then)
      : super(_value, (v) => _then(v as _$_Reference));

  @override
  _$_Reference get _value => super._value as _$_Reference;

  @override
  $Res call({
    Object? id = freezed,
    Object? startIndex = freezed,
    Object? endIndex = freezed,
    Object? title = freezed,
    Object? createdAt = freezed,
    Object? documentId = freezed,
  }) {
    return _then(_$_Reference(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      startIndex: startIndex == freezed
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      endIndex: endIndex == freezed
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      documentId: documentId == freezed
          ? _value.documentId
          : documentId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reference implements _Reference {
  _$_Reference(
      {required this.id,
      required this.startIndex,
      required this.endIndex,
      required this.title,
      required this.createdAt,
      this.documentId});

  factory _$_Reference.fromJson(Map<String, dynamic> json) =>
      _$$_ReferenceFromJson(json);

  @override
  final String id;
  @override
  final int startIndex;
  @override
  final int endIndex;
  @override
  final String title;
  @override
  final String createdAt;
  @override
  final String? documentId;

  @override
  String toString() {
    return 'Reference(id: $id, startIndex: $startIndex, endIndex: $endIndex, title: $title, createdAt: $createdAt, documentId: $documentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reference &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.startIndex, startIndex) &&
            const DeepCollectionEquality().equals(other.endIndex, endIndex) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.documentId, documentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(startIndex),
      const DeepCollectionEquality().hash(endIndex),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(documentId));

  @JsonKey(ignore: true)
  @override
  _$$_ReferenceCopyWith<_$_Reference> get copyWith =>
      __$$_ReferenceCopyWithImpl<_$_Reference>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReferenceToJson(
      this,
    );
  }
}

abstract class _Reference implements Reference {
  factory _Reference(
      {required final String id,
      required final int startIndex,
      required final int endIndex,
      required final String title,
      required final String createdAt,
      final String? documentId}) = _$_Reference;

  factory _Reference.fromJson(Map<String, dynamic> json) =
      _$_Reference.fromJson;

  @override
  String get id;
  @override
  int get startIndex;
  @override
  int get endIndex;
  @override
  String get title;
  @override
  String get createdAt;
  @override
  String? get documentId;
  @override
  @JsonKey(ignore: true)
  _$$_ReferenceCopyWith<_$_Reference> get copyWith =>
      throw _privateConstructorUsedError;
}
