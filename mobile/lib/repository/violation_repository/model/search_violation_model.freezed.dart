// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_violation_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchViolationModel _$SearchViolationModelFromJson(Map<String, dynamic> json) {
  return _SearchViolationModel.fromJson(json);
}

/// @nodoc
mixin _$SearchViolationModel {
  int get total => throw _privateConstructorUsedError;
  int get pageIndex => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  List<SearchItemViolationModel> get items =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchViolationModelCopyWith<SearchViolationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchViolationModelCopyWith<$Res> {
  factory $SearchViolationModelCopyWith(SearchViolationModel value,
          $Res Function(SearchViolationModel) then) =
      _$SearchViolationModelCopyWithImpl<$Res>;
  $Res call(
      {int total,
      int pageIndex,
      int pageSize,
      List<SearchItemViolationModel> items});
}

/// @nodoc
class _$SearchViolationModelCopyWithImpl<$Res>
    implements $SearchViolationModelCopyWith<$Res> {
  _$SearchViolationModelCopyWithImpl(this._value, this._then);

  final SearchViolationModel _value;
  // ignore: unused_field
  final $Res Function(SearchViolationModel) _then;

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
              as List<SearchItemViolationModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchViolationModelCopyWith<$Res>
    implements $SearchViolationModelCopyWith<$Res> {
  factory _$$_SearchViolationModelCopyWith(_$_SearchViolationModel value,
          $Res Function(_$_SearchViolationModel) then) =
      __$$_SearchViolationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int total,
      int pageIndex,
      int pageSize,
      List<SearchItemViolationModel> items});
}

/// @nodoc
class __$$_SearchViolationModelCopyWithImpl<$Res>
    extends _$SearchViolationModelCopyWithImpl<$Res>
    implements _$$_SearchViolationModelCopyWith<$Res> {
  __$$_SearchViolationModelCopyWithImpl(_$_SearchViolationModel _value,
      $Res Function(_$_SearchViolationModel) _then)
      : super(_value, (v) => _then(v as _$_SearchViolationModel));

  @override
  _$_SearchViolationModel get _value => super._value as _$_SearchViolationModel;

  @override
  $Res call({
    Object? total = freezed,
    Object? pageIndex = freezed,
    Object? pageSize = freezed,
    Object? items = freezed,
  }) {
    return _then(_$_SearchViolationModel(
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
              as List<SearchItemViolationModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SearchViolationModel implements _SearchViolationModel {
  _$_SearchViolationModel(
      {required this.total,
      required this.pageIndex,
      required this.pageSize,
      required final List<SearchItemViolationModel> items})
      : _items = items;

  factory _$_SearchViolationModel.fromJson(Map<String, dynamic> json) =>
      _$$_SearchViolationModelFromJson(json);

  @override
  final int total;
  @override
  final int pageIndex;
  @override
  final int pageSize;
  final List<SearchItemViolationModel> _items;
  @override
  List<SearchItemViolationModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'SearchViolationModel(total: $total, pageIndex: $pageIndex, pageSize: $pageSize, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchViolationModel &&
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
  _$$_SearchViolationModelCopyWith<_$_SearchViolationModel> get copyWith =>
      __$$_SearchViolationModelCopyWithImpl<_$_SearchViolationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchViolationModelToJson(
      this,
    );
  }
}

abstract class _SearchViolationModel implements SearchViolationModel {
  factory _SearchViolationModel(
          {required final int total,
          required final int pageIndex,
          required final int pageSize,
          required final List<SearchItemViolationModel> items}) =
      _$_SearchViolationModel;

  factory _SearchViolationModel.fromJson(Map<String, dynamic> json) =
      _$_SearchViolationModel.fromJson;

  @override
  int get total;
  @override
  int get pageIndex;
  @override
  int get pageSize;
  @override
  List<SearchItemViolationModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_SearchViolationModelCopyWith<_$_SearchViolationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
