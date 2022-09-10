// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'setting_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ChangeType type, dynamic data) update,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChangeType type, dynamic data)? update,
    TResult Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChangeType type, dynamic data)? update,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_LogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_LogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingEventCopyWith<$Res> {
  factory $SettingEventCopyWith(
          SettingEvent value, $Res Function(SettingEvent) then) =
      _$SettingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingEventCopyWithImpl<$Res> implements $SettingEventCopyWith<$Res> {
  _$SettingEventCopyWithImpl(this._value, this._then);

  final SettingEvent _value;
  // ignore: unused_field
  final $Res Function(SettingEvent) _then;
}

/// @nodoc
abstract class _$$_StartedEventCopyWith<$Res> {
  factory _$$_StartedEventCopyWith(
          _$_StartedEvent value, $Res Function(_$_StartedEvent) then) =
      __$$_StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res>
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
    return 'SettingEvent.started()';
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
    required TResult Function(ChangeType type, dynamic data) update,
    required TResult Function() logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChangeType type, dynamic data)? update,
    TResult Function()? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChangeType type, dynamic data)? update,
    TResult Function()? logout,
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
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_LogoutEvent value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements SettingEvent {
  const factory _StartedEvent() = _$_StartedEvent;
}

/// @nodoc
abstract class _$$_UpdateEventCopyWith<$Res> {
  factory _$$_UpdateEventCopyWith(
          _$_UpdateEvent value, $Res Function(_$_UpdateEvent) then) =
      __$$_UpdateEventCopyWithImpl<$Res>;
  $Res call({ChangeType type, dynamic data});
}

/// @nodoc
class __$$_UpdateEventCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res>
    implements _$$_UpdateEventCopyWith<$Res> {
  __$$_UpdateEventCopyWithImpl(
      _$_UpdateEvent _value, $Res Function(_$_UpdateEvent) _then)
      : super(_value, (v) => _then(v as _$_UpdateEvent));

  @override
  _$_UpdateEvent get _value => super._value as _$_UpdateEvent;

  @override
  $Res call({
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_UpdateEvent(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ChangeType,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_UpdateEvent implements _UpdateEvent {
  const _$_UpdateEvent(this.type, this.data);

  @override
  final ChangeType type;
  @override
  final dynamic data;

  @override
  String toString() {
    return 'SettingEvent.update(type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEvent &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      __$$_UpdateEventCopyWithImpl<_$_UpdateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ChangeType type, dynamic data) update,
    required TResult Function() logout,
  }) {
    return update(type, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChangeType type, dynamic data)? update,
    TResult Function()? logout,
  }) {
    return update?.call(type, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChangeType type, dynamic data)? update,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(type, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_LogoutEvent value)? logout,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent implements SettingEvent {
  const factory _UpdateEvent(final ChangeType type, final dynamic data) =
      _$_UpdateEvent;

  ChangeType get type;
  dynamic get data;
  @JsonKey(ignore: true)
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutEventCopyWith<$Res> {
  factory _$$_LogoutEventCopyWith(
          _$_LogoutEvent value, $Res Function(_$_LogoutEvent) then) =
      __$$_LogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutEventCopyWithImpl<$Res>
    extends _$SettingEventCopyWithImpl<$Res>
    implements _$$_LogoutEventCopyWith<$Res> {
  __$$_LogoutEventCopyWithImpl(
      _$_LogoutEvent _value, $Res Function(_$_LogoutEvent) _then)
      : super(_value, (v) => _then(v as _$_LogoutEvent));

  @override
  _$_LogoutEvent get _value => super._value as _$_LogoutEvent;
}

/// @nodoc

class _$_LogoutEvent implements _LogoutEvent {
  const _$_LogoutEvent();

  @override
  String toString() {
    return 'SettingEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ChangeType type, dynamic data) update,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChangeType type, dynamic data)? update,
    TResult Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ChangeType type, dynamic data)? update,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_UpdateEvent value) update,
    required TResult Function(_LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_LogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? update,
    TResult Function(_LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _LogoutEvent implements SettingEvent {
  const factory _LogoutEvent() = _$_LogoutEvent;
}

/// @nodoc
mixin _$SettingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Profile profile, Gender? gender) success,
    required TResult Function(String error, Profile profile) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile, Gender? gender)? success,
    TResult Function(String error, Profile profile)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile, Gender? gender)? success,
    TResult Function(String error, Profile profile)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res> implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  final SettingState _value;
  // ignore: unused_field
  final $Res Function(SettingState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SettingStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SettingState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Profile profile, Gender? gender) success,
    required TResult Function(String error, Profile profile) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile, Gender? gender)? success,
    TResult Function(String error, Profile profile)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile, Gender? gender)? success,
    TResult Function(String error, Profile profile)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SettingState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({Profile profile, Gender? gender});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$SettingStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? profile = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$_Success(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success({required this.profile, this.gender});

  @override
  final Profile profile;
  @override
  final Gender? gender;

  @override
  String toString() {
    return 'SettingState.success(profile: $profile, gender: $gender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other.profile, profile) &&
            const DeepCollectionEquality().equals(other.gender, gender));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(profile),
      const DeepCollectionEquality().hash(gender));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Profile profile, Gender? gender) success,
    required TResult Function(String error, Profile profile) error,
  }) {
    return success(profile, gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile, Gender? gender)? success,
    TResult Function(String error, Profile profile)? error,
  }) {
    return success?.call(profile, gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile, Gender? gender)? success,
    TResult Function(String error, Profile profile)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(profile, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SettingState {
  const factory _Success(
      {required final Profile profile, final Gender? gender}) = _$_Success;

  Profile get profile;
  Gender? get gender;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  $Res call({String error, Profile profile});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res> extends _$SettingStateCopyWithImpl<$Res>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, (v) => _then(v as _$_Error));

  @override
  _$_Error get _value => super._value as _$_Error;

  @override
  $Res call({
    Object? error = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$_Error(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get profile {
    return $ProfileCopyWith<$Res>(_value.profile, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.error, required this.profile});

  @override
  final String error;
  @override
  final Profile profile;

  @override
  String toString() {
    return 'SettingState.error(error: $error, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.profile, profile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(profile));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Profile profile, Gender? gender) success,
    required TResult Function(String error, Profile profile) error,
  }) {
    return error(this.error, profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile, Gender? gender)? success,
    TResult Function(String error, Profile profile)? error,
  }) {
    return error?.call(this.error, profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Profile profile, Gender? gender)? success,
    TResult Function(String error, Profile profile)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SettingState {
  const factory _Error(
      {required final String error, required final Profile profile}) = _$_Error;

  String get error;
  Profile get profile;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
