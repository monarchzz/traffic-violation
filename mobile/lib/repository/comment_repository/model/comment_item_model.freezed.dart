// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentItemModel _$CommentItemModelFromJson(Map<String, dynamic> json) {
  return _CommentItemModel.fromJson(json);
}

/// @nodoc
mixin _$CommentItemModel {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  Profile get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentItemModelCopyWith<CommentItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentItemModelCopyWith<$Res> {
  factory $CommentItemModelCopyWith(
          CommentItemModel value, $Res Function(CommentItemModel) then) =
      _$CommentItemModelCopyWithImpl<$Res>;
  $Res call({String id, String text, DateTime createdAt, Profile user});

  $ProfileCopyWith<$Res> get user;
}

/// @nodoc
class _$CommentItemModelCopyWithImpl<$Res>
    implements $CommentItemModelCopyWith<$Res> {
  _$CommentItemModelCopyWithImpl(this._value, this._then);

  final CommentItemModel _value;
  // ignore: unused_field
  final $Res Function(CommentItemModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get user {
    return $ProfileCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_CommentItemModelCopyWith<$Res>
    implements $CommentItemModelCopyWith<$Res> {
  factory _$$_CommentItemModelCopyWith(
          _$_CommentItemModel value, $Res Function(_$_CommentItemModel) then) =
      __$$_CommentItemModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String text, DateTime createdAt, Profile user});

  @override
  $ProfileCopyWith<$Res> get user;
}

/// @nodoc
class __$$_CommentItemModelCopyWithImpl<$Res>
    extends _$CommentItemModelCopyWithImpl<$Res>
    implements _$$_CommentItemModelCopyWith<$Res> {
  __$$_CommentItemModelCopyWithImpl(
      _$_CommentItemModel _value, $Res Function(_$_CommentItemModel) _then)
      : super(_value, (v) => _then(v as _$_CommentItemModel));

  @override
  _$_CommentItemModel get _value => super._value as _$_CommentItemModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? createdAt = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_CommentItemModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentItemModel implements _CommentItemModel {
  _$_CommentItemModel(
      {required this.id,
      required this.text,
      required this.createdAt,
      required this.user});

  factory _$_CommentItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommentItemModelFromJson(json);

  @override
  final String id;
  @override
  final String text;
  @override
  final DateTime createdAt;
  @override
  final Profile user;

  @override
  String toString() {
    return 'CommentItemModel(id: $id, text: $text, createdAt: $createdAt, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentItemModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_CommentItemModelCopyWith<_$_CommentItemModel> get copyWith =>
      __$$_CommentItemModelCopyWithImpl<_$_CommentItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentItemModelToJson(
      this,
    );
  }
}

abstract class _CommentItemModel implements CommentItemModel {
  factory _CommentItemModel(
      {required final String id,
      required final String text,
      required final DateTime createdAt,
      required final Profile user}) = _$_CommentItemModel;

  factory _CommentItemModel.fromJson(Map<String, dynamic> json) =
      _$_CommentItemModel.fromJson;

  @override
  String get id;
  @override
  String get text;
  @override
  DateTime get createdAt;
  @override
  Profile get user;
  @override
  @JsonKey(ignore: true)
  _$$_CommentItemModelCopyWith<_$_CommentItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
