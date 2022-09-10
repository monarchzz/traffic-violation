// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'most_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MostSearch _$MostSearchFromJson(Map<String, dynamic> json) {
  return _MostSearch.fromJson(json);
}

/// @nodoc
mixin _$MostSearch {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MostSearchCopyWith<MostSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MostSearchCopyWith<$Res> {
  factory $MostSearchCopyWith(
          MostSearch value, $Res Function(MostSearch) then) =
      _$MostSearchCopyWithImpl<$Res>;
  $Res call({String id, String title, int viewCount});
}

/// @nodoc
class _$MostSearchCopyWithImpl<$Res> implements $MostSearchCopyWith<$Res> {
  _$MostSearchCopyWithImpl(this._value, this._then);

  final MostSearch _value;
  // ignore: unused_field
  final $Res Function(MostSearch) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? viewCount = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_MostSearchCopyWith<$Res>
    implements $MostSearchCopyWith<$Res> {
  factory _$$_MostSearchCopyWith(
          _$_MostSearch value, $Res Function(_$_MostSearch) then) =
      __$$_MostSearchCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, int viewCount});
}

/// @nodoc
class __$$_MostSearchCopyWithImpl<$Res> extends _$MostSearchCopyWithImpl<$Res>
    implements _$$_MostSearchCopyWith<$Res> {
  __$$_MostSearchCopyWithImpl(
      _$_MostSearch _value, $Res Function(_$_MostSearch) _then)
      : super(_value, (v) => _then(v as _$_MostSearch));

  @override
  _$_MostSearch get _value => super._value as _$_MostSearch;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? viewCount = freezed,
  }) {
    return _then(_$_MostSearch(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MostSearch implements _MostSearch {
  _$_MostSearch(
      {required this.id, required this.title, required this.viewCount});

  factory _$_MostSearch.fromJson(Map<String, dynamic> json) =>
      _$$_MostSearchFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final int viewCount;

  @override
  String toString() {
    return 'MostSearch(id: $id, title: $title, viewCount: $viewCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MostSearch &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.viewCount, viewCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(viewCount));

  @JsonKey(ignore: true)
  @override
  _$$_MostSearchCopyWith<_$_MostSearch> get copyWith =>
      __$$_MostSearchCopyWithImpl<_$_MostSearch>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MostSearchToJson(
      this,
    );
  }
}

abstract class _MostSearch implements MostSearch {
  factory _MostSearch(
      {required final String id,
      required final String title,
      required final int viewCount}) = _$_MostSearch;

  factory _MostSearch.fromJson(Map<String, dynamic> json) =
      _$_MostSearch.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get viewCount;
  @override
  @JsonKey(ignore: true)
  _$$_MostSearchCopyWith<_$_MostSearch> get copyWith =>
      throw _privateConstructorUsedError;
}
