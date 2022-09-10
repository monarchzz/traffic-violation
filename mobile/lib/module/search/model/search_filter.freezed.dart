// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchFilter {
  String get text => throw _privateConstructorUsedError;
  FilterType get filterType => throw _privateConstructorUsedError;
  Vehicle? get affectedVehicle => throw _privateConstructorUsedError;
  int? get minPenalty => throw _privateConstructorUsedError;
  int? get maxPenalty => throw _privateConstructorUsedError;
  bool? get isAllPenalty => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFilterCopyWith<SearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilterCopyWith<$Res> {
  factory $SearchFilterCopyWith(
          SearchFilter value, $Res Function(SearchFilter) then) =
      _$SearchFilterCopyWithImpl<$Res>;
  $Res call(
      {String text,
      FilterType filterType,
      Vehicle? affectedVehicle,
      int? minPenalty,
      int? maxPenalty,
      bool? isAllPenalty});
}

/// @nodoc
class _$SearchFilterCopyWithImpl<$Res> implements $SearchFilterCopyWith<$Res> {
  _$SearchFilterCopyWithImpl(this._value, this._then);

  final SearchFilter _value;
  // ignore: unused_field
  final $Res Function(SearchFilter) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? filterType = freezed,
    Object? affectedVehicle = freezed,
    Object? minPenalty = freezed,
    Object? maxPenalty = freezed,
    Object? isAllPenalty = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      filterType: filterType == freezed
          ? _value.filterType
          : filterType // ignore: cast_nullable_to_non_nullable
              as FilterType,
      affectedVehicle: affectedVehicle == freezed
          ? _value.affectedVehicle
          : affectedVehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
      minPenalty: minPenalty == freezed
          ? _value.minPenalty
          : minPenalty // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPenalty: maxPenalty == freezed
          ? _value.maxPenalty
          : maxPenalty // ignore: cast_nullable_to_non_nullable
              as int?,
      isAllPenalty: isAllPenalty == freezed
          ? _value.isAllPenalty
          : isAllPenalty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_SearchFilterCopyWith<$Res>
    implements $SearchFilterCopyWith<$Res> {
  factory _$$_SearchFilterCopyWith(
          _$_SearchFilter value, $Res Function(_$_SearchFilter) then) =
      __$$_SearchFilterCopyWithImpl<$Res>;
  @override
  $Res call(
      {String text,
      FilterType filterType,
      Vehicle? affectedVehicle,
      int? minPenalty,
      int? maxPenalty,
      bool? isAllPenalty});
}

/// @nodoc
class __$$_SearchFilterCopyWithImpl<$Res>
    extends _$SearchFilterCopyWithImpl<$Res>
    implements _$$_SearchFilterCopyWith<$Res> {
  __$$_SearchFilterCopyWithImpl(
      _$_SearchFilter _value, $Res Function(_$_SearchFilter) _then)
      : super(_value, (v) => _then(v as _$_SearchFilter));

  @override
  _$_SearchFilter get _value => super._value as _$_SearchFilter;

  @override
  $Res call({
    Object? text = freezed,
    Object? filterType = freezed,
    Object? affectedVehicle = freezed,
    Object? minPenalty = freezed,
    Object? maxPenalty = freezed,
    Object? isAllPenalty = freezed,
  }) {
    return _then(_$_SearchFilter(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      filterType: filterType == freezed
          ? _value.filterType
          : filterType // ignore: cast_nullable_to_non_nullable
              as FilterType,
      affectedVehicle: affectedVehicle == freezed
          ? _value.affectedVehicle
          : affectedVehicle // ignore: cast_nullable_to_non_nullable
              as Vehicle?,
      minPenalty: minPenalty == freezed
          ? _value.minPenalty
          : minPenalty // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPenalty: maxPenalty == freezed
          ? _value.maxPenalty
          : maxPenalty // ignore: cast_nullable_to_non_nullable
              as int?,
      isAllPenalty: isAllPenalty == freezed
          ? _value.isAllPenalty
          : isAllPenalty // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_SearchFilter implements _SearchFilter {
  _$_SearchFilter(
      {required this.text,
      required this.filterType,
      this.affectedVehicle,
      this.minPenalty,
      this.maxPenalty,
      this.isAllPenalty});

  @override
  final String text;
  @override
  final FilterType filterType;
  @override
  final Vehicle? affectedVehicle;
  @override
  final int? minPenalty;
  @override
  final int? maxPenalty;
  @override
  final bool? isAllPenalty;

  @override
  String toString() {
    return 'SearchFilter(text: $text, filterType: $filterType, affectedVehicle: $affectedVehicle, minPenalty: $minPenalty, maxPenalty: $maxPenalty, isAllPenalty: $isAllPenalty)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchFilter &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.filterType, filterType) &&
            const DeepCollectionEquality()
                .equals(other.affectedVehicle, affectedVehicle) &&
            const DeepCollectionEquality()
                .equals(other.minPenalty, minPenalty) &&
            const DeepCollectionEquality()
                .equals(other.maxPenalty, maxPenalty) &&
            const DeepCollectionEquality()
                .equals(other.isAllPenalty, isAllPenalty));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(filterType),
      const DeepCollectionEquality().hash(affectedVehicle),
      const DeepCollectionEquality().hash(minPenalty),
      const DeepCollectionEquality().hash(maxPenalty),
      const DeepCollectionEquality().hash(isAllPenalty));

  @JsonKey(ignore: true)
  @override
  _$$_SearchFilterCopyWith<_$_SearchFilter> get copyWith =>
      __$$_SearchFilterCopyWithImpl<_$_SearchFilter>(this, _$identity);
}

abstract class _SearchFilter implements SearchFilter {
  factory _SearchFilter(
      {required final String text,
      required final FilterType filterType,
      final Vehicle? affectedVehicle,
      final int? minPenalty,
      final int? maxPenalty,
      final bool? isAllPenalty}) = _$_SearchFilter;

  @override
  String get text;
  @override
  FilterType get filterType;
  @override
  Vehicle? get affectedVehicle;
  @override
  int? get minPenalty;
  @override
  int? get maxPenalty;
  @override
  bool? get isAllPenalty;
  @override
  @JsonKey(ignore: true)
  _$$_SearchFilterCopyWith<_$_SearchFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
