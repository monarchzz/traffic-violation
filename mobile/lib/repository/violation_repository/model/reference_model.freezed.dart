// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reference_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReferenceModel _$ReferenceModelFromJson(Map<String, dynamic> json) {
  return _ReferenceModel.fromJson(json);
}

/// @nodoc
mixin _$ReferenceModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get startIndex => throw _privateConstructorUsedError;
  int get endIndex => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String? get documentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferenceModelCopyWith<ReferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferenceModelCopyWith<$Res> {
  factory $ReferenceModelCopyWith(
          ReferenceModel value, $Res Function(ReferenceModel) then) =
      _$ReferenceModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String title,
      int startIndex,
      int endIndex,
      String createdAt,
      String? documentId});
}

/// @nodoc
class _$ReferenceModelCopyWithImpl<$Res>
    implements $ReferenceModelCopyWith<$Res> {
  _$ReferenceModelCopyWithImpl(this._value, this._then);

  final ReferenceModel _value;
  // ignore: unused_field
  final $Res Function(ReferenceModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? startIndex = freezed,
    Object? endIndex = freezed,
    Object? createdAt = freezed,
    Object? documentId = freezed,
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
      startIndex: startIndex == freezed
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      endIndex: endIndex == freezed
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_ReferenceModelCopyWith<$Res>
    implements $ReferenceModelCopyWith<$Res> {
  factory _$$_ReferenceModelCopyWith(
          _$_ReferenceModel value, $Res Function(_$_ReferenceModel) then) =
      __$$_ReferenceModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String title,
      int startIndex,
      int endIndex,
      String createdAt,
      String? documentId});
}

/// @nodoc
class __$$_ReferenceModelCopyWithImpl<$Res>
    extends _$ReferenceModelCopyWithImpl<$Res>
    implements _$$_ReferenceModelCopyWith<$Res> {
  __$$_ReferenceModelCopyWithImpl(
      _$_ReferenceModel _value, $Res Function(_$_ReferenceModel) _then)
      : super(_value, (v) => _then(v as _$_ReferenceModel));

  @override
  _$_ReferenceModel get _value => super._value as _$_ReferenceModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? startIndex = freezed,
    Object? endIndex = freezed,
    Object? createdAt = freezed,
    Object? documentId = freezed,
  }) {
    return _then(_$_ReferenceModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      startIndex: startIndex == freezed
          ? _value.startIndex
          : startIndex // ignore: cast_nullable_to_non_nullable
              as int,
      endIndex: endIndex == freezed
          ? _value.endIndex
          : endIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_ReferenceModel implements _ReferenceModel {
  _$_ReferenceModel(
      {required this.id,
      required this.title,
      required this.startIndex,
      required this.endIndex,
      required this.createdAt,
      this.documentId});

  factory _$_ReferenceModel.fromJson(Map<String, dynamic> json) =>
      _$$_ReferenceModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final int startIndex;
  @override
  final int endIndex;
  @override
  final String createdAt;
  @override
  final String? documentId;

  @override
  String toString() {
    return 'ReferenceModel(id: $id, title: $title, startIndex: $startIndex, endIndex: $endIndex, createdAt: $createdAt, documentId: $documentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReferenceModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.startIndex, startIndex) &&
            const DeepCollectionEquality().equals(other.endIndex, endIndex) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.documentId, documentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(startIndex),
      const DeepCollectionEquality().hash(endIndex),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(documentId));

  @JsonKey(ignore: true)
  @override
  _$$_ReferenceModelCopyWith<_$_ReferenceModel> get copyWith =>
      __$$_ReferenceModelCopyWithImpl<_$_ReferenceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReferenceModelToJson(
      this,
    );
  }
}

abstract class _ReferenceModel implements ReferenceModel {
  factory _ReferenceModel(
      {required final String id,
      required final String title,
      required final int startIndex,
      required final int endIndex,
      required final String createdAt,
      final String? documentId}) = _$_ReferenceModel;

  factory _ReferenceModel.fromJson(Map<String, dynamic> json) =
      _$_ReferenceModel.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get startIndex;
  @override
  int get endIndex;
  @override
  String get createdAt;
  @override
  String? get documentId;
  @override
  @JsonKey(ignore: true)
  _$$_ReferenceModelCopyWith<_$_ReferenceModel> get copyWith =>
      throw _privateConstructorUsedError;
}
