// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PlatformFile file) updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PlatformFile file)? updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PlatformFile file)? updateAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res> implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  final ProfileEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileEvent) _then;
}

/// @nodoc
abstract class _$$_StartedEventCopyWith<$Res> {
  factory _$$_StartedEventCopyWith(
          _$_StartedEvent value, $Res Function(_$_StartedEvent) then) =
      __$$_StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_StartedEventCopyWith<$Res> {
  __$$_StartedEventCopyWithImpl(
      _$_StartedEvent _value, $Res Function(_$_StartedEvent) _then)
      : super(_value, (v) => _then(v as _$_StartedEvent));

  @override
  _$_StartedEvent get _value => super._value as _$_StartedEvent;
}

/// @nodoc

class _$_StartedEvent with DiagnosticableTreeMixin implements _StartedEvent {
  const _$_StartedEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProfileEvent.started'));
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
    required TResult Function(PlatformFile file) updateAvatar,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PlatformFile file)? updateAvatar,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PlatformFile file)? updateAvatar,
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
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements ProfileEvent {
  const factory _StartedEvent() = _$_StartedEvent;
}

/// @nodoc
abstract class _$$_UpdateAvatarEventCopyWith<$Res> {
  factory _$$_UpdateAvatarEventCopyWith(_$_UpdateAvatarEvent value,
          $Res Function(_$_UpdateAvatarEvent) then) =
      __$$_UpdateAvatarEventCopyWithImpl<$Res>;
  $Res call({PlatformFile file});
}

/// @nodoc
class __$$_UpdateAvatarEventCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res>
    implements _$$_UpdateAvatarEventCopyWith<$Res> {
  __$$_UpdateAvatarEventCopyWithImpl(
      _$_UpdateAvatarEvent _value, $Res Function(_$_UpdateAvatarEvent) _then)
      : super(_value, (v) => _then(v as _$_UpdateAvatarEvent));

  @override
  _$_UpdateAvatarEvent get _value => super._value as _$_UpdateAvatarEvent;

  @override
  $Res call({
    Object? file = freezed,
  }) {
    return _then(_$_UpdateAvatarEvent(
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as PlatformFile,
    ));
  }
}

/// @nodoc

class _$_UpdateAvatarEvent
    with DiagnosticableTreeMixin
    implements _UpdateAvatarEvent {
  const _$_UpdateAvatarEvent({required this.file});

  @override
  final PlatformFile file;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileEvent.updateAvatar(file: $file)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileEvent.updateAvatar'))
      ..add(DiagnosticsProperty('file', file));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAvatarEvent &&
            const DeepCollectionEquality().equals(other.file, file));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(file));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateAvatarEventCopyWith<_$_UpdateAvatarEvent> get copyWith =>
      __$$_UpdateAvatarEventCopyWithImpl<_$_UpdateAvatarEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(PlatformFile file) updateAvatar,
  }) {
    return updateAvatar(file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PlatformFile file)? updateAvatar,
  }) {
    return updateAvatar?.call(file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(PlatformFile file)? updateAvatar,
    required TResult orElse(),
  }) {
    if (updateAvatar != null) {
      return updateAvatar(file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_UpdateAvatarEvent value) updateAvatar,
  }) {
    return updateAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
  }) {
    return updateAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateAvatarEvent value)? updateAvatar,
    required TResult orElse(),
  }) {
    if (updateAvatar != null) {
      return updateAvatar(this);
    }
    return orElse();
  }
}

abstract class _UpdateAvatarEvent implements ProfileEvent {
  const factory _UpdateAvatarEvent({required final PlatformFile file}) =
      _$_UpdateAvatarEvent;

  PlatformFile get file;
  @JsonKey(ignore: true)
  _$$_UpdateAvatarEventCopyWith<_$_UpdateAvatarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingAvatar,
    required TResult Function() unauthorized,
    required TResult Function(Profile profile, List<Violation> violations)
        success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAvatar,
    TResult Function()? unauthorized,
    TResult Function(Profile profile, List<Violation> violations)? success,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAvatar,
    TResult Function()? unauthorized,
    TResult Function(Profile profile, List<Violation> violations)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingAvatar value) loadingAvatar,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingAvatar value)? loadingAvatar,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingAvatar value)? loadingAvatar,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProfileState.initial'));
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
    required TResult Function() loadingAvatar,
    required TResult Function() unauthorized,
    required TResult Function(Profile profile, List<Violation> violations)
        success,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAvatar,
    TResult Function()? unauthorized,
    TResult Function(Profile profile, List<Violation> violations)? success,
    TResult Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAvatar,
    TResult Function()? unauthorized,
    TResult Function(Profile profile, List<Violation> violations)? success,
    TResult Function()? failure,
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
    required TResult Function(_LoadingAvatar value) loadingAvatar,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingAvatar value)? loadingAvatar,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingAvatar value)? loadingAvatar,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfileState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingAvatarCopyWith<$Res> {
  factory _$$_LoadingAvatarCopyWith(
          _$_LoadingAvatar value, $Res Function(_$_LoadingAvatar) then) =
      __$$_LoadingAvatarCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingAvatarCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_LoadingAvatarCopyWith<$Res> {
  __$$_LoadingAvatarCopyWithImpl(
      _$_LoadingAvatar _value, $Res Function(_$_LoadingAvatar) _then)
      : super(_value, (v) => _then(v as _$_LoadingAvatar));

  @override
  _$_LoadingAvatar get _value => super._value as _$_LoadingAvatar;
}

/// @nodoc

class _$_LoadingAvatar with DiagnosticableTreeMixin implements _LoadingAvatar {
  const _$_LoadingAvatar();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.loadingAvatar()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProfileState.loadingAvatar'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingAvatar);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingAvatar,
    required TResult Function() unauthorized,
    required TResult Function(Profile profile, List<Violation> violations)
        success,
    required TResult Function() failure,
  }) {
    return loadingAvatar();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAvatar,
    TResult Function()? unauthorized,
    TResult Function(Profile profile, List<Violation> violations)? success,
    TResult Function()? failure,
  }) {
    return loadingAvatar?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAvatar,
    TResult Function()? unauthorized,
    TResult Function(Profile profile, List<Violation> violations)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loadingAvatar != null) {
      return loadingAvatar();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingAvatar value) loadingAvatar,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loadingAvatar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingAvatar value)? loadingAvatar,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return loadingAvatar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingAvatar value)? loadingAvatar,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadingAvatar != null) {
      return loadingAvatar(this);
    }
    return orElse();
  }
}

abstract class _LoadingAvatar implements ProfileState {
  const factory _LoadingAvatar() = _$_LoadingAvatar;
}

/// @nodoc
abstract class _$$_UnauthorizedCopyWith<$Res> {
  factory _$$_UnauthorizedCopyWith(
          _$_Unauthorized value, $Res Function(_$_Unauthorized) then) =
      __$$_UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthorizedCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_UnauthorizedCopyWith<$Res> {
  __$$_UnauthorizedCopyWithImpl(
      _$_Unauthorized _value, $Res Function(_$_Unauthorized) _then)
      : super(_value, (v) => _then(v as _$_Unauthorized));

  @override
  _$_Unauthorized get _value => super._value as _$_Unauthorized;
}

/// @nodoc

class _$_Unauthorized with DiagnosticableTreeMixin implements _Unauthorized {
  const _$_Unauthorized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.unauthorized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProfileState.unauthorized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingAvatar,
    required TResult Function() unauthorized,
    required TResult Function(Profile profile, List<Violation> violations)
        success,
    required TResult Function() failure,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAvatar,
    TResult Function()? unauthorized,
    TResult Function(Profile profile, List<Violation> violations)? success,
    TResult Function()? failure,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAvatar,
    TResult Function()? unauthorized,
    TResult Function(Profile profile, List<Violation> violations)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingAvatar value) loadingAvatar,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingAvatar value)? loadingAvatar,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingAvatar value)? loadingAvatar,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements ProfileState {
  const factory _Unauthorized() = _$_Unauthorized;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call({Profile profile, List<Violation> violations});

  $ProfileCopyWith<$Res> get profile;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? profile = freezed,
    Object? violations = freezed,
  }) {
    return _then(_$_Success(
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile,
      violations: violations == freezed
          ? _value._violations
          : violations // ignore: cast_nullable_to_non_nullable
              as List<Violation>,
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

class _$_Success with DiagnosticableTreeMixin implements _Success {
  const _$_Success(
      {required this.profile, required final List<Violation> violations})
      : _violations = violations;

  @override
  final Profile profile;
  final List<Violation> _violations;
  @override
  List<Violation> get violations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_violations);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.success(profile: $profile, violations: $violations)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileState.success'))
      ..add(DiagnosticsProperty('profile', profile))
      ..add(DiagnosticsProperty('violations', violations));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other.profile, profile) &&
            const DeepCollectionEquality()
                .equals(other._violations, _violations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(profile),
      const DeepCollectionEquality().hash(_violations));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingAvatar,
    required TResult Function() unauthorized,
    required TResult Function(Profile profile, List<Violation> violations)
        success,
    required TResult Function() failure,
  }) {
    return success(profile, violations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAvatar,
    TResult Function()? unauthorized,
    TResult Function(Profile profile, List<Violation> violations)? success,
    TResult Function()? failure,
  }) {
    return success?.call(profile, violations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAvatar,
    TResult Function()? unauthorized,
    TResult Function(Profile profile, List<Violation> violations)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(profile, violations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingAvatar value) loadingAvatar,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingAvatar value)? loadingAvatar,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingAvatar value)? loadingAvatar,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements ProfileState {
  const factory _Success(
      {required final Profile profile,
      required final List<Violation> violations}) = _$_Success;

  Profile get profile;
  List<Violation> get violations;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;
}

/// @nodoc

class _$_Failure with DiagnosticableTreeMixin implements _Failure {
  const _$_Failure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileState.failure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProfileState.failure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadingAvatar,
    required TResult Function() unauthorized,
    required TResult Function(Profile profile, List<Violation> violations)
        success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAvatar,
    TResult Function()? unauthorized,
    TResult Function(Profile profile, List<Violation> violations)? success,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadingAvatar,
    TResult Function()? unauthorized,
    TResult Function(Profile profile, List<Violation> violations)? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingAvatar value) loadingAvatar,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingAvatar value)? loadingAvatar,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingAvatar value)? loadingAvatar,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ProfileState {
  const factory _Failure() = _$_Failure;
}
