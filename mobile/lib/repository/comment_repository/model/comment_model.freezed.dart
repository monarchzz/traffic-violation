// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) {
  return _CommentModel.fromJson(json);
}

/// @nodoc
mixin _$CommentModel {
  int get total => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  List<CommentItemModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentModelCopyWith<CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentModelCopyWith<$Res> {
  factory $CommentModelCopyWith(
          CommentModel value, $Res Function(CommentModel) then) =
      _$CommentModelCopyWithImpl<$Res>;
  $Res call(
      {int total, int pageIndex, int pageSize, List<CommentItemModel> items});
}

/// @nodoc
class _$CommentModelCopyWithImpl<$Res> implements $CommentModelCopyWith<$Res> {
  _$CommentModelCopyWithImpl(this._value, this._then);

  final CommentModel _value;
  // ignore: unused_field
  final $Res Function(CommentModel) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? pageIndex = freezed,
    Object? pageSize = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pageIndex: pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CommentItemModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_CommentModelCopyWith<$Res>
    implements $CommentModelCopyWith<$Res> {
  factory _$$_CommentModelCopyWith(
          _$_CommentModel value, $Res Function(_$_CommentModel) then) =
      __$$_CommentModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int total, int pageIndex, int pageSize, List<CommentItemModel> items});
}

/// @nodoc
class __$$_CommentModelCopyWithImpl<$Res>
    extends _$CommentModelCopyWithImpl<$Res>
    implements _$$_CommentModelCopyWith<$Res> {
  __$$_CommentModelCopyWithImpl(
      _$_CommentModel _value, $Res Function(_$_CommentModel) _then)
      : super(_value, (v) => _then(v as _$_CommentModel));

  @override
  _$_CommentModel get _value => super._value as _$_CommentModel;

  @override
  $Res call({
    Object? total = freezed,
    Object? pageIndex = freezed,
    Object? pageSize = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_CommentModel(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pageIndex: pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: pageSize == freezed
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CommentItemModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CommentModel implements _CommentModel {
  _$_CommentModel(
      {required this.total,
      required this.pageIndex,
      required this.pageSize,
      required final List<CommentItemModel> items})
      : _items = items;

  factory _$_CommentModel.fromJson(Map<String, dynamic> json) =>
      _$$_CommentModelFromJson(json);

  @override
  final int total;
  @override
  final int pageIndex;
  @override
  final int pageSize;
  final List<CommentItemModel> _items;
  @override
  List<CommentItemModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CommentModel(total: $total, pageIndex: $pageIndex, pageSize: $pageSize, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentModel &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.pageIndex, pageIndex) &&
            const DeepCollectionEquality().equals(other.pageSize, pageSize) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(pageIndex),
      const DeepCollectionEquality().hash(pageSize),
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_CommentModelCopyWith<_$_CommentModel> get copyWith =>
      __$$_CommentModelCopyWithImpl<_$_CommentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentModelToJson(
      this,
    );
  }
}

abstract class _CommentModel implements CommentModel {
  factory _CommentModel(
      {required final int total,
      required final int pageIndex,
      required final int pageSize,
      required final List<CommentItemModel> items}) = _$_CommentModel;

  factory _CommentModel.fromJson(Map<String, dynamic> json) =
      _$_CommentModel.fromJson;

  @override
  int get total;
  @override
  int get pageIndex;
  @override
  int get pageSize;
  @override
  List<CommentItemModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_CommentModelCopyWith<_$_CommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
