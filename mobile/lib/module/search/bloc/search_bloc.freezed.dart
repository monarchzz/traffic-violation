// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() searchedItemButtonPressed,
    required TResult Function() hideSearchedItemButtonPressed,
    required TResult Function(String value) search,
    required TResult Function() pop,
    required TResult Function(List<SearchFilter> filters) filter,
    required TResult Function() searchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_SearchedItemButtonPressedEvent value)
        searchedItemButtonPressed,
    required TResult Function(_HideSearchedItemButtonPressedEvent value)
        hideSearchedItemButtonPressed,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_PopEvent value) pop,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_SearchMoreEvent value) searchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$$_StartedEventCopyWith<$Res> {
  factory _$$_StartedEventCopyWith(
          _$_StartedEvent value, $Res Function(_$_StartedEvent) then) =
      __$$_StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_StartedEventCopyWith<$Res> {
  __$$_StartedEventCopyWithImpl(
      _$_StartedEvent _value, $Res Function(_$_StartedEvent) _then)
      : super(_value, (v) => _then(v as _$_StartedEvent));

  @override
  _$_StartedEvent get _value => super._value as _$_StartedEvent;
}

/// @nodoc

class _$_StartedEvent implements _StartedEvent {
  const _$_StartedEvent();

  @override
  String toString() {
    return 'SearchEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StartedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() searchedItemButtonPressed,
    required TResult Function() hideSearchedItemButtonPressed,
    required TResult Function(String value) search,
    required TResult Function() pop,
    required TResult Function(List<SearchFilter> filters) filter,
    required TResult Function() searchMore,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_SearchedItemButtonPressedEvent value)
        searchedItemButtonPressed,
    required TResult Function(_HideSearchedItemButtonPressedEvent value)
        hideSearchedItemButtonPressed,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_PopEvent value) pop,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_SearchMoreEvent value) searchMore,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements SearchEvent {
  const factory _StartedEvent() = _$_StartedEvent;
}

/// @nodoc
abstract class _$$_LoadingEventCopyWith<$Res> {
  factory _$$_LoadingEventCopyWith(
          _$_LoadingEvent value, $Res Function(_$_LoadingEvent) then) =
      __$$_LoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_LoadingEventCopyWith<$Res> {
  __$$_LoadingEventCopyWithImpl(
      _$_LoadingEvent _value, $Res Function(_$_LoadingEvent) _then)
      : super(_value, (v) => _then(v as _$_LoadingEvent));

  @override
  _$_LoadingEvent get _value => super._value as _$_LoadingEvent;
}

/// @nodoc

class _$_LoadingEvent implements _LoadingEvent {
  const _$_LoadingEvent();

  @override
  String toString() {
    return 'SearchEvent.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() searchedItemButtonPressed,
    required TResult Function() hideSearchedItemButtonPressed,
    required TResult Function(String value) search,
    required TResult Function() pop,
    required TResult Function(List<SearchFilter> filters) filter,
    required TResult Function() searchMore,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_SearchedItemButtonPressedEvent value)
        searchedItemButtonPressed,
    required TResult Function(_HideSearchedItemButtonPressedEvent value)
        hideSearchedItemButtonPressed,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_PopEvent value) pop,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_SearchMoreEvent value) searchMore,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingEvent implements SearchEvent {
  const factory _LoadingEvent() = _$_LoadingEvent;
}

/// @nodoc
abstract class _$$_SearchedItemButtonPressedEventCopyWith<$Res> {
  factory _$$_SearchedItemButtonPressedEventCopyWith(
          _$_SearchedItemButtonPressedEvent value,
          $Res Function(_$_SearchedItemButtonPressedEvent) then) =
      __$$_SearchedItemButtonPressedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchedItemButtonPressedEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_SearchedItemButtonPressedEventCopyWith<$Res> {
  __$$_SearchedItemButtonPressedEventCopyWithImpl(
      _$_SearchedItemButtonPressedEvent _value,
      $Res Function(_$_SearchedItemButtonPressedEvent) _then)
      : super(_value, (v) => _then(v as _$_SearchedItemButtonPressedEvent));

  @override
  _$_SearchedItemButtonPressedEvent get _value =>
      super._value as _$_SearchedItemButtonPressedEvent;
}

/// @nodoc

class _$_SearchedItemButtonPressedEvent
    implements _SearchedItemButtonPressedEvent {
  const _$_SearchedItemButtonPressedEvent();

  @override
  String toString() {
    return 'SearchEvent.searchedItemButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchedItemButtonPressedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() searchedItemButtonPressed,
    required TResult Function() hideSearchedItemButtonPressed,
    required TResult Function(String value) search,
    required TResult Function() pop,
    required TResult Function(List<SearchFilter> filters) filter,
    required TResult Function() searchMore,
  }) {
    return searchedItemButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
  }) {
    return searchedItemButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
    required TResult orElse(),
  }) {
    if (searchedItemButtonPressed != null) {
      return searchedItemButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_SearchedItemButtonPressedEvent value)
        searchedItemButtonPressed,
    required TResult Function(_HideSearchedItemButtonPressedEvent value)
        hideSearchedItemButtonPressed,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_PopEvent value) pop,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_SearchMoreEvent value) searchMore,
  }) {
    return searchedItemButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
  }) {
    return searchedItemButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
    required TResult orElse(),
  }) {
    if (searchedItemButtonPressed != null) {
      return searchedItemButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SearchedItemButtonPressedEvent implements SearchEvent {
  const factory _SearchedItemButtonPressedEvent() =
      _$_SearchedItemButtonPressedEvent;
}

/// @nodoc
abstract class _$$_HideSearchedItemButtonPressedEventCopyWith<$Res> {
  factory _$$_HideSearchedItemButtonPressedEventCopyWith(
          _$_HideSearchedItemButtonPressedEvent value,
          $Res Function(_$_HideSearchedItemButtonPressedEvent) then) =
      __$$_HideSearchedItemButtonPressedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HideSearchedItemButtonPressedEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_HideSearchedItemButtonPressedEventCopyWith<$Res> {
  __$$_HideSearchedItemButtonPressedEventCopyWithImpl(
      _$_HideSearchedItemButtonPressedEvent _value,
      $Res Function(_$_HideSearchedItemButtonPressedEvent) _then)
      : super(_value, (v) => _then(v as _$_HideSearchedItemButtonPressedEvent));

  @override
  _$_HideSearchedItemButtonPressedEvent get _value =>
      super._value as _$_HideSearchedItemButtonPressedEvent;
}

/// @nodoc

class _$_HideSearchedItemButtonPressedEvent
    implements _HideSearchedItemButtonPressedEvent {
  const _$_HideSearchedItemButtonPressedEvent();

  @override
  String toString() {
    return 'SearchEvent.hideSearchedItemButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HideSearchedItemButtonPressedEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() searchedItemButtonPressed,
    required TResult Function() hideSearchedItemButtonPressed,
    required TResult Function(String value) search,
    required TResult Function() pop,
    required TResult Function(List<SearchFilter> filters) filter,
    required TResult Function() searchMore,
  }) {
    return hideSearchedItemButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
  }) {
    return hideSearchedItemButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
    required TResult orElse(),
  }) {
    if (hideSearchedItemButtonPressed != null) {
      return hideSearchedItemButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_SearchedItemButtonPressedEvent value)
        searchedItemButtonPressed,
    required TResult Function(_HideSearchedItemButtonPressedEvent value)
        hideSearchedItemButtonPressed,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_PopEvent value) pop,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_SearchMoreEvent value) searchMore,
  }) {
    return hideSearchedItemButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
  }) {
    return hideSearchedItemButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
    required TResult orElse(),
  }) {
    if (hideSearchedItemButtonPressed != null) {
      return hideSearchedItemButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _HideSearchedItemButtonPressedEvent implements SearchEvent {
  const factory _HideSearchedItemButtonPressedEvent() =
      _$_HideSearchedItemButtonPressedEvent;
}

/// @nodoc
abstract class _$$_SearchEventCopyWith<$Res> {
  factory _$$_SearchEventCopyWith(
          _$_SearchEvent value, $Res Function(_$_SearchEvent) then) =
      __$$_SearchEventCopyWithImpl<$Res>;
  $Res call({String value});
}

/// @nodoc
class __$$_SearchEventCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_SearchEventCopyWith<$Res> {
  __$$_SearchEventCopyWithImpl(
      _$_SearchEvent _value, $Res Function(_$_SearchEvent) _then)
      : super(_value, (v) => _then(v as _$_SearchEvent));

  @override
  _$_SearchEvent get _value => super._value as _$_SearchEvent;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_SearchEvent(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchEvent implements _SearchEvent {
  const _$_SearchEvent({required this.value});

  @override
  final String value;

  @override
  String toString() {
    return 'SearchEvent.search(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchEvent &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_SearchEventCopyWith<_$_SearchEvent> get copyWith =>
      __$$_SearchEventCopyWithImpl<_$_SearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() searchedItemButtonPressed,
    required TResult Function() hideSearchedItemButtonPressed,
    required TResult Function(String value) search,
    required TResult Function() pop,
    required TResult Function(List<SearchFilter> filters) filter,
    required TResult Function() searchMore,
  }) {
    return search(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
  }) {
    return search?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_SearchedItemButtonPressedEvent value)
        searchedItemButtonPressed,
    required TResult Function(_HideSearchedItemButtonPressedEvent value)
        hideSearchedItemButtonPressed,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_PopEvent value) pop,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_SearchMoreEvent value) searchMore,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchEvent implements SearchEvent {
  const factory _SearchEvent({required final String value}) = _$_SearchEvent;

  String get value;
  @JsonKey(ignore: true)
  _$$_SearchEventCopyWith<_$_SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PopEventCopyWith<$Res> {
  factory _$$_PopEventCopyWith(
          _$_PopEvent value, $Res Function(_$_PopEvent) then) =
      __$$_PopEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PopEventCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_PopEventCopyWith<$Res> {
  __$$_PopEventCopyWithImpl(
      _$_PopEvent _value, $Res Function(_$_PopEvent) _then)
      : super(_value, (v) => _then(v as _$_PopEvent));

  @override
  _$_PopEvent get _value => super._value as _$_PopEvent;
}

/// @nodoc

class _$_PopEvent implements _PopEvent {
  const _$_PopEvent();

  @override
  String toString() {
    return 'SearchEvent.pop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PopEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() searchedItemButtonPressed,
    required TResult Function() hideSearchedItemButtonPressed,
    required TResult Function(String value) search,
    required TResult Function() pop,
    required TResult Function(List<SearchFilter> filters) filter,
    required TResult Function() searchMore,
  }) {
    return pop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
  }) {
    return pop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_SearchedItemButtonPressedEvent value)
        searchedItemButtonPressed,
    required TResult Function(_HideSearchedItemButtonPressedEvent value)
        hideSearchedItemButtonPressed,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_PopEvent value) pop,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_SearchMoreEvent value) searchMore,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
  }) {
    return pop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(this);
    }
    return orElse();
  }
}

abstract class _PopEvent implements SearchEvent {
  const factory _PopEvent() = _$_PopEvent;
}

/// @nodoc
abstract class _$$_FilterEventCopyWith<$Res> {
  factory _$$_FilterEventCopyWith(
          _$_FilterEvent value, $Res Function(_$_FilterEvent) then) =
      __$$_FilterEventCopyWithImpl<$Res>;
  $Res call({List<SearchFilter> filters});
}

/// @nodoc
class __$$_FilterEventCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_FilterEventCopyWith<$Res> {
  __$$_FilterEventCopyWithImpl(
      _$_FilterEvent _value, $Res Function(_$_FilterEvent) _then)
      : super(_value, (v) => _then(v as _$_FilterEvent));

  @override
  _$_FilterEvent get _value => super._value as _$_FilterEvent;

  @override
  $Res call({
    Object? filters = freezed,
  }) {
    return _then(_$_FilterEvent(
      filters: filters == freezed
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<SearchFilter>,
    ));
  }
}

/// @nodoc

class _$_FilterEvent implements _FilterEvent {
  const _$_FilterEvent({required final List<SearchFilter> filters})
      : _filters = filters;

  final List<SearchFilter> _filters;
  @override
  List<SearchFilter> get filters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @override
  String toString() {
    return 'SearchEvent.filter(filters: $filters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterEvent &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  _$$_FilterEventCopyWith<_$_FilterEvent> get copyWith =>
      __$$_FilterEventCopyWithImpl<_$_FilterEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() searchedItemButtonPressed,
    required TResult Function() hideSearchedItemButtonPressed,
    required TResult Function(String value) search,
    required TResult Function() pop,
    required TResult Function(List<SearchFilter> filters) filter,
    required TResult Function() searchMore,
  }) {
    return filter(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
  }) {
    return filter?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_SearchedItemButtonPressedEvent value)
        searchedItemButtonPressed,
    required TResult Function(_HideSearchedItemButtonPressedEvent value)
        hideSearchedItemButtonPressed,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_PopEvent value) pop,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_SearchMoreEvent value) searchMore,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class _FilterEvent implements SearchEvent {
  const factory _FilterEvent({required final List<SearchFilter> filters}) =
      _$_FilterEvent;

  List<SearchFilter> get filters;
  @JsonKey(ignore: true)
  _$$_FilterEventCopyWith<_$_FilterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchMoreEventCopyWith<$Res> {
  factory _$$_SearchMoreEventCopyWith(
          _$_SearchMoreEvent value, $Res Function(_$_SearchMoreEvent) then) =
      __$$_SearchMoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchMoreEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements _$$_SearchMoreEventCopyWith<$Res> {
  __$$_SearchMoreEventCopyWithImpl(
      _$_SearchMoreEvent _value, $Res Function(_$_SearchMoreEvent) _then)
      : super(_value, (v) => _then(v as _$_SearchMoreEvent));

  @override
  _$_SearchMoreEvent get _value => super._value as _$_SearchMoreEvent;
}

/// @nodoc

class _$_SearchMoreEvent implements _SearchMoreEvent {
  const _$_SearchMoreEvent();

  @override
  String toString() {
    return 'SearchEvent.searchMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchMoreEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loading,
    required TResult Function() searchedItemButtonPressed,
    required TResult Function() hideSearchedItemButtonPressed,
    required TResult Function(String value) search,
    required TResult Function() pop,
    required TResult Function(List<SearchFilter> filters) filter,
    required TResult Function() searchMore,
  }) {
    return searchMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
  }) {
    return searchMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loading,
    TResult Function()? searchedItemButtonPressed,
    TResult Function()? hideSearchedItemButtonPressed,
    TResult Function(String value)? search,
    TResult Function()? pop,
    TResult Function(List<SearchFilter> filters)? filter,
    TResult Function()? searchMore,
    required TResult orElse(),
  }) {
    if (searchMore != null) {
      return searchMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_LoadingEvent value) loading,
    required TResult Function(_SearchedItemButtonPressedEvent value)
        searchedItemButtonPressed,
    required TResult Function(_HideSearchedItemButtonPressedEvent value)
        hideSearchedItemButtonPressed,
    required TResult Function(_SearchEvent value) search,
    required TResult Function(_PopEvent value) pop,
    required TResult Function(_FilterEvent value) filter,
    required TResult Function(_SearchMoreEvent value) searchMore,
  }) {
    return searchMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
  }) {
    return searchMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_LoadingEvent value)? loading,
    TResult Function(_SearchedItemButtonPressedEvent value)?
        searchedItemButtonPressed,
    TResult Function(_HideSearchedItemButtonPressedEvent value)?
        hideSearchedItemButtonPressed,
    TResult Function(_SearchEvent value)? search,
    TResult Function(_PopEvent value)? pop,
    TResult Function(_FilterEvent value)? filter,
    TResult Function(_SearchMoreEvent value)? searchMore,
    required TResult orElse(),
  }) {
    if (searchMore != null) {
      return searchMore(this);
    }
    return orElse();
  }
}

abstract class _SearchMoreEvent implements SearchEvent {
  const factory _SearchMoreEvent() = _$_SearchMoreEvent;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<String> searchedItems,
            List<String> frequentlySearchedItems,
            List<Violation> violations,
            List<SearchFilter> filters,
            bool isViewAllSearchedItems,
            int index,
            int total,
            int pageIndex,
            bool hasNextPage,
            String? searchText,
            bool? searchLoading)
        success,
    required TResult Function(String? message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<String> searchedItems,
            List<String> frequentlySearchedItems,
            List<Violation> violations,
            List<SearchFilter> filters,
            bool isViewAllSearchedItems,
            int index,
            int total,
            int pageIndex,
            bool hasNextPage,
            String? searchText,
            bool? searchLoading)?
        success,
    TResult Function(String? message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<String> searchedItems,
            List<String> frequentlySearchedItems,
            List<Violation> violations,
            List<SearchFilter> filters,
            bool isViewAllSearchedItems,
            int index,
            int total,
            int pageIndex,
            bool hasNextPage,
            String? searchText,
            bool? searchLoading)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$$_LoadingStateCopyWith<$Res> {
  factory _$$_LoadingStateCopyWith(
          _$_LoadingState value, $Res Function(_$_LoadingState) then) =
      __$$_LoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_LoadingStateCopyWith<$Res> {
  __$$_LoadingStateCopyWithImpl(
      _$_LoadingState _value, $Res Function(_$_LoadingState) _then)
      : super(_value, (v) => _then(v as _$_LoadingState));

  @override
  _$_LoadingState get _value => super._value as _$_LoadingState;
}

/// @nodoc

class _$_LoadingState implements _LoadingState {
  const _$_LoadingState();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<String> searchedItems,
            List<String> frequentlySearchedItems,
            List<Violation> violations,
            List<SearchFilter> filters,
            bool isViewAllSearchedItems,
            int index,
            int total,
            int pageIndex,
            bool hasNextPage,
            String? searchText,
            bool? searchLoading)
        success,
    required TResult Function(String? message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<String> searchedItems,
            List<String> frequentlySearchedItems,
            List<Violation> violations,
            List<SearchFilter> filters,
            bool isViewAllSearchedItems,
            int index,
            int total,
            int pageIndex,
            bool hasNextPage,
            String? searchText,
            bool? searchLoading)?
        success,
    TResult Function(String? message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<String> searchedItems,
            List<String> frequentlySearchedItems,
            List<Violation> violations,
            List<SearchFilter> filters,
            bool isViewAllSearchedItems,
            int index,
            int total,
            int pageIndex,
            bool hasNextPage,
            String? searchText,
            bool? searchLoading)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements SearchState {
  const factory _LoadingState() = _$_LoadingState;
}

/// @nodoc
abstract class _$$_SuccessStateCopyWith<$Res> {
  factory _$$_SuccessStateCopyWith(
          _$_SuccessState value, $Res Function(_$_SuccessState) then) =
      __$$_SuccessStateCopyWithImpl<$Res>;
  $Res call(
      {List<String> searchedItems,
      List<String> frequentlySearchedItems,
      List<Violation> violations,
      List<SearchFilter> filters,
      bool isViewAllSearchedItems,
      int index,
      int total,
      int pageIndex,
      bool hasNextPage,
      String? searchText,
      bool? searchLoading});
}

/// @nodoc
class __$$_SuccessStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_SuccessStateCopyWith<$Res> {
  __$$_SuccessStateCopyWithImpl(
      _$_SuccessState _value, $Res Function(_$_SuccessState) _then)
      : super(_value, (v) => _then(v as _$_SuccessState));

  @override
  _$_SuccessState get _value => super._value as _$_SuccessState;

  @override
  $Res call({
    Object? searchedItems = freezed,
    Object? frequentlySearchedItems = freezed,
    Object? violations = freezed,
    Object? filters = freezed,
    Object? isViewAllSearchedItems = freezed,
    Object? index = freezed,
    Object? total = freezed,
    Object? pageIndex = freezed,
    Object? hasNextPage = freezed,
    Object? searchText = freezed,
    Object? searchLoading = freezed,
  }) {
    return _then(_$_SuccessState(
      searchedItems: searchedItems == freezed
          ? _value._searchedItems
          : searchedItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
      frequentlySearchedItems: frequentlySearchedItems == freezed
          ? _value._frequentlySearchedItems
          : frequentlySearchedItems // ignore: cast_nullable_to_non_nullable
              as List<String>,
      violations: violations == freezed
          ? _value._violations
          : violations // ignore: cast_nullable_to_non_nullable
              as List<Violation>,
      filters: filters == freezed
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<SearchFilter>,
      isViewAllSearchedItems: isViewAllSearchedItems == freezed
          ? _value.isViewAllSearchedItems
          : isViewAllSearchedItems // ignore: cast_nullable_to_non_nullable
              as bool,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      pageIndex: pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      searchLoading: searchLoading == freezed
          ? _value.searchLoading
          : searchLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_SuccessState implements _SuccessState {
  const _$_SuccessState(
      {required final List<String> searchedItems,
      required final List<String> frequentlySearchedItems,
      required final List<Violation> violations,
      required final List<SearchFilter> filters,
      required this.isViewAllSearchedItems,
      required this.index,
      required this.total,
      required this.pageIndex,
      required this.hasNextPage,
      this.searchText,
      this.searchLoading})
      : _searchedItems = searchedItems,
        _frequentlySearchedItems = frequentlySearchedItems,
        _violations = violations,
        _filters = filters;

  final List<String> _searchedItems;
  @override
  List<String> get searchedItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchedItems);
  }

  final List<String> _frequentlySearchedItems;
  @override
  List<String> get frequentlySearchedItems {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_frequentlySearchedItems);
  }

  final List<Violation> _violations;
  @override
  List<Violation> get violations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_violations);
  }

  final List<SearchFilter> _filters;
  @override
  List<SearchFilter> get filters {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @override
  final bool isViewAllSearchedItems;
  @override
  final int index;
  @override
  final int total;
  @override
  final int pageIndex;
  @override
  final bool hasNextPage;
  @override
  final String? searchText;
  @override
  final bool? searchLoading;

  @override
  String toString() {
    return 'SearchState.success(searchedItems: $searchedItems, frequentlySearchedItems: $frequentlySearchedItems, violations: $violations, filters: $filters, isViewAllSearchedItems: $isViewAllSearchedItems, index: $index, total: $total, pageIndex: $pageIndex, hasNextPage: $hasNextPage, searchText: $searchText, searchLoading: $searchLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SuccessState &&
            const DeepCollectionEquality()
                .equals(other._searchedItems, _searchedItems) &&
            const DeepCollectionEquality().equals(
                other._frequentlySearchedItems, _frequentlySearchedItems) &&
            const DeepCollectionEquality()
                .equals(other._violations, _violations) &&
            const DeepCollectionEquality().equals(other._filters, _filters) &&
            const DeepCollectionEquality()
                .equals(other.isViewAllSearchedItems, isViewAllSearchedItems) &&
            const DeepCollectionEquality().equals(other.index, index) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.pageIndex, pageIndex) &&
            const DeepCollectionEquality()
                .equals(other.hasNextPage, hasNextPage) &&
            const DeepCollectionEquality()
                .equals(other.searchText, searchText) &&
            const DeepCollectionEquality()
                .equals(other.searchLoading, searchLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_searchedItems),
      const DeepCollectionEquality().hash(_frequentlySearchedItems),
      const DeepCollectionEquality().hash(_violations),
      const DeepCollectionEquality().hash(_filters),
      const DeepCollectionEquality().hash(isViewAllSearchedItems),
      const DeepCollectionEquality().hash(index),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(pageIndex),
      const DeepCollectionEquality().hash(hasNextPage),
      const DeepCollectionEquality().hash(searchText),
      const DeepCollectionEquality().hash(searchLoading));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      __$$_SuccessStateCopyWithImpl<_$_SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<String> searchedItems,
            List<String> frequentlySearchedItems,
            List<Violation> violations,
            List<SearchFilter> filters,
            bool isViewAllSearchedItems,
            int index,
            int total,
            int pageIndex,
            bool hasNextPage,
            String? searchText,
            bool? searchLoading)
        success,
    required TResult Function(String? message) failure,
  }) {
    return success(
        searchedItems,
        frequentlySearchedItems,
        violations,
        filters,
        isViewAllSearchedItems,
        index,
        total,
        pageIndex,
        hasNextPage,
        searchText,
        searchLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<String> searchedItems,
            List<String> frequentlySearchedItems,
            List<Violation> violations,
            List<SearchFilter> filters,
            bool isViewAllSearchedItems,
            int index,
            int total,
            int pageIndex,
            bool hasNextPage,
            String? searchText,
            bool? searchLoading)?
        success,
    TResult Function(String? message)? failure,
  }) {
    return success?.call(
        searchedItems,
        frequentlySearchedItems,
        violations,
        filters,
        isViewAllSearchedItems,
        index,
        total,
        pageIndex,
        hasNextPage,
        searchText,
        searchLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<String> searchedItems,
            List<String> frequentlySearchedItems,
            List<Violation> violations,
            List<SearchFilter> filters,
            bool isViewAllSearchedItems,
            int index,
            int total,
            int pageIndex,
            bool hasNextPage,
            String? searchText,
            bool? searchLoading)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(
          searchedItems,
          frequentlySearchedItems,
          violations,
          filters,
          isViewAllSearchedItems,
          index,
          total,
          pageIndex,
          hasNextPage,
          searchText,
          searchLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SuccessState implements SearchState {
  const factory _SuccessState(
      {required final List<String> searchedItems,
      required final List<String> frequentlySearchedItems,
      required final List<Violation> violations,
      required final List<SearchFilter> filters,
      required final bool isViewAllSearchedItems,
      required final int index,
      required final int total,
      required final int pageIndex,
      required final bool hasNextPage,
      final String? searchText,
      final bool? searchLoading}) = _$_SuccessState;

  List<String> get searchedItems;
  List<String> get frequentlySearchedItems;
  List<Violation> get violations;
  List<SearchFilter> get filters;
  bool get isViewAllSearchedItems;
  int get index;
  int get total;
  int get pageIndex;
  bool get hasNextPage;
  String? get searchText;
  bool? get searchLoading;
  @JsonKey(ignore: true)
  _$$_SuccessStateCopyWith<_$_SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureStateCopyWith<$Res> {
  factory _$$_FailureStateCopyWith(
          _$_FailureState value, $Res Function(_$_FailureState) then) =
      __$$_FailureStateCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$_FailureStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements _$$_FailureStateCopyWith<$Res> {
  __$$_FailureStateCopyWithImpl(
      _$_FailureState _value, $Res Function(_$_FailureState) _then)
      : super(_value, (v) => _then(v as _$_FailureState));

  @override
  _$_FailureState get _value => super._value as _$_FailureState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_FailureState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_FailureState implements _FailureState {
  const _$_FailureState({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'SearchState.failure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureState &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_FailureStateCopyWith<_$_FailureState> get copyWith =>
      __$$_FailureStateCopyWithImpl<_$_FailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<String> searchedItems,
            List<String> frequentlySearchedItems,
            List<Violation> violations,
            List<SearchFilter> filters,
            bool isViewAllSearchedItems,
            int index,
            int total,
            int pageIndex,
            bool hasNextPage,
            String? searchText,
            bool? searchLoading)
        success,
    required TResult Function(String? message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<String> searchedItems,
            List<String> frequentlySearchedItems,
            List<Violation> violations,
            List<SearchFilter> filters,
            bool isViewAllSearchedItems,
            int index,
            int total,
            int pageIndex,
            bool hasNextPage,
            String? searchText,
            bool? searchLoading)?
        success,
    TResult Function(String? message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<String> searchedItems,
            List<String> frequentlySearchedItems,
            List<Violation> violations,
            List<SearchFilter> filters,
            bool isViewAllSearchedItems,
            int index,
            int total,
            int pageIndex,
            bool hasNextPage,
            String? searchText,
            bool? searchLoading)?
        success,
    TResult Function(String? message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_SuccessState value) success,
    required TResult Function(_FailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loading,
    TResult Function(_SuccessState value)? success,
    TResult Function(_FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FailureState implements SearchState {
  const factory _FailureState({final String? message}) = _$_FailureState;

  String? get message;
  @JsonKey(ignore: true)
  _$$_FailureStateCopyWith<_$_FailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
