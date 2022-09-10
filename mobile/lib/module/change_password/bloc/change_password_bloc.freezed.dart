// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String oldPassword, String newPassword, String repeatPassword)
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String oldPassword, String newPassword, String repeatPassword)?
        submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String oldPassword, String newPassword, String repeatPassword)?
        submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_SubmitEvent value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SubmitEvent value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  final ChangePasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordEvent) _then;
}

/// @nodoc
abstract class _$$_StartedEventCopyWith<$Res> {
  factory _$$_StartedEventCopyWith(
          _$_StartedEvent value, $Res Function(_$_StartedEvent) then) =
      __$$_StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
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
    return 'ChangePasswordEvent.started()';
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
    required TResult Function(
            String oldPassword, String newPassword, String repeatPassword)
        submit,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String oldPassword, String newPassword, String repeatPassword)?
        submit,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String oldPassword, String newPassword, String repeatPassword)?
        submit,
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
    required TResult Function(_SubmitEvent value) submit,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SubmitEvent value)? submit,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements ChangePasswordEvent {
  const factory _StartedEvent() = _$_StartedEvent;
}

/// @nodoc
abstract class _$$_SubmitEventCopyWith<$Res> {
  factory _$$_SubmitEventCopyWith(
          _$_SubmitEvent value, $Res Function(_$_SubmitEvent) then) =
      __$$_SubmitEventCopyWithImpl<$Res>;
  $Res call({String oldPassword, String newPassword, String repeatPassword});
}

/// @nodoc
class __$$_SubmitEventCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res>
    implements _$$_SubmitEventCopyWith<$Res> {
  __$$_SubmitEventCopyWithImpl(
      _$_SubmitEvent _value, $Res Function(_$_SubmitEvent) _then)
      : super(_value, (v) => _then(v as _$_SubmitEvent));

  @override
  _$_SubmitEvent get _value => super._value as _$_SubmitEvent;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
    Object? repeatPassword = freezed,
  }) {
    return _then(_$_SubmitEvent(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SubmitEvent implements _SubmitEvent {
  const _$_SubmitEvent(
      {required this.oldPassword,
      required this.newPassword,
      required this.repeatPassword});

  @override
  final String oldPassword;
  @override
  final String newPassword;
  @override
  final String repeatPassword;

  @override
  String toString() {
    return 'ChangePasswordEvent.submit(oldPassword: $oldPassword, newPassword: $newPassword, repeatPassword: $repeatPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitEvent &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldPassword),
      const DeepCollectionEquality().hash(newPassword),
      const DeepCollectionEquality().hash(repeatPassword));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitEventCopyWith<_$_SubmitEvent> get copyWith =>
      __$$_SubmitEventCopyWithImpl<_$_SubmitEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String oldPassword, String newPassword, String repeatPassword)
        submit,
  }) {
    return submit(oldPassword, newPassword, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String oldPassword, String newPassword, String repeatPassword)?
        submit,
  }) {
    return submit?.call(oldPassword, newPassword, repeatPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String oldPassword, String newPassword, String repeatPassword)?
        submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(oldPassword, newPassword, repeatPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_SubmitEvent value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SubmitEvent value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SubmitEvent value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _SubmitEvent implements ChangePasswordEvent {
  const factory _SubmitEvent(
      {required final String oldPassword,
      required final String newPassword,
      required final String repeatPassword}) = _$_SubmitEvent;

  String get oldPassword;
  String get newPassword;
  String get repeatPassword;
  @JsonKey(ignore: true)
  _$$_SubmitEventCopyWith<_$_SubmitEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChangePasswordState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? oldPasswordError,
            String? newPasswordError,
            String? repeatPasswordError,
            String? error)
        invalid,
    required TResult Function() valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? oldPasswordError, String? newPasswordError,
            String? repeatPasswordError, String? error)?
        invalid,
    TResult Function()? valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? oldPasswordError, String? newPasswordError,
            String? repeatPasswordError, String? error)?
        invalid,
    TResult Function()? valid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Invalid value) invalid,
    required TResult Function(_Valid value) valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Valid value)? valid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Valid value)? valid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  final ChangePasswordState _value;
  // ignore: unused_field
  final $Res Function(ChangePasswordState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
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
    return 'ChangePasswordState.initial()';
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
    required TResult Function(
            String? oldPasswordError,
            String? newPasswordError,
            String? repeatPasswordError,
            String? error)
        invalid,
    required TResult Function() valid,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? oldPasswordError, String? newPasswordError,
            String? repeatPasswordError, String? error)?
        invalid,
    TResult Function()? valid,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? oldPasswordError, String? newPasswordError,
            String? repeatPasswordError, String? error)?
        invalid,
    TResult Function()? valid,
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
    required TResult Function(_Invalid value) invalid,
    required TResult Function(_Valid value) valid,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Valid value)? valid,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Valid value)? valid,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChangePasswordState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InvalidCopyWith<$Res> {
  factory _$$_InvalidCopyWith(
          _$_Invalid value, $Res Function(_$_Invalid) then) =
      __$$_InvalidCopyWithImpl<$Res>;
  $Res call(
      {String? oldPasswordError,
      String? newPasswordError,
      String? repeatPasswordError,
      String? error});
}

/// @nodoc
class __$$_InvalidCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$$_InvalidCopyWith<$Res> {
  __$$_InvalidCopyWithImpl(_$_Invalid _value, $Res Function(_$_Invalid) _then)
      : super(_value, (v) => _then(v as _$_Invalid));

  @override
  _$_Invalid get _value => super._value as _$_Invalid;

  @override
  $Res call({
    Object? oldPasswordError = freezed,
    Object? newPasswordError = freezed,
    Object? repeatPasswordError = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_Invalid(
      oldPasswordError: oldPasswordError == freezed
          ? _value.oldPasswordError
          : oldPasswordError // ignore: cast_nullable_to_non_nullable
              as String?,
      newPasswordError: newPasswordError == freezed
          ? _value.newPasswordError
          : newPasswordError // ignore: cast_nullable_to_non_nullable
              as String?,
      repeatPasswordError: repeatPasswordError == freezed
          ? _value.repeatPasswordError
          : repeatPasswordError // ignore: cast_nullable_to_non_nullable
              as String?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Invalid implements _Invalid {
  const _$_Invalid(
      {this.oldPasswordError,
      this.newPasswordError,
      this.repeatPasswordError,
      this.error});

  @override
  final String? oldPasswordError;
  @override
  final String? newPasswordError;
  @override
  final String? repeatPasswordError;
  @override
  final String? error;

  @override
  String toString() {
    return 'ChangePasswordState.invalid(oldPasswordError: $oldPasswordError, newPasswordError: $newPasswordError, repeatPasswordError: $repeatPasswordError, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Invalid &&
            const DeepCollectionEquality()
                .equals(other.oldPasswordError, oldPasswordError) &&
            const DeepCollectionEquality()
                .equals(other.newPasswordError, newPasswordError) &&
            const DeepCollectionEquality()
                .equals(other.repeatPasswordError, repeatPasswordError) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldPasswordError),
      const DeepCollectionEquality().hash(newPasswordError),
      const DeepCollectionEquality().hash(repeatPasswordError),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_InvalidCopyWith<_$_Invalid> get copyWith =>
      __$$_InvalidCopyWithImpl<_$_Invalid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? oldPasswordError,
            String? newPasswordError,
            String? repeatPasswordError,
            String? error)
        invalid,
    required TResult Function() valid,
  }) {
    return invalid(
        oldPasswordError, newPasswordError, repeatPasswordError, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? oldPasswordError, String? newPasswordError,
            String? repeatPasswordError, String? error)?
        invalid,
    TResult Function()? valid,
  }) {
    return invalid?.call(
        oldPasswordError, newPasswordError, repeatPasswordError, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? oldPasswordError, String? newPasswordError,
            String? repeatPasswordError, String? error)?
        invalid,
    TResult Function()? valid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(
          oldPasswordError, newPasswordError, repeatPasswordError, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Invalid value) invalid,
    required TResult Function(_Valid value) valid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Valid value)? valid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Valid value)? valid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _Invalid implements ChangePasswordState {
  const factory _Invalid(
      {final String? oldPasswordError,
      final String? newPasswordError,
      final String? repeatPasswordError,
      final String? error}) = _$_Invalid;

  String? get oldPasswordError;
  String? get newPasswordError;
  String? get repeatPasswordError;
  String? get error;
  @JsonKey(ignore: true)
  _$$_InvalidCopyWith<_$_Invalid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidCopyWith<$Res> {
  factory _$$_ValidCopyWith(_$_Valid value, $Res Function(_$_Valid) then) =
      __$$_ValidCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res>
    implements _$$_ValidCopyWith<$Res> {
  __$$_ValidCopyWithImpl(_$_Valid _value, $Res Function(_$_Valid) _then)
      : super(_value, (v) => _then(v as _$_Valid));

  @override
  _$_Valid get _value => super._value as _$_Valid;
}

/// @nodoc

class _$_Valid implements _Valid {
  const _$_Valid();

  @override
  String toString() {
    return 'ChangePasswordState.valid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Valid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? oldPasswordError,
            String? newPasswordError,
            String? repeatPasswordError,
            String? error)
        invalid,
    required TResult Function() valid,
  }) {
    return valid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? oldPasswordError, String? newPasswordError,
            String? repeatPasswordError, String? error)?
        invalid,
    TResult Function()? valid,
  }) {
    return valid?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? oldPasswordError, String? newPasswordError,
            String? repeatPasswordError, String? error)?
        invalid,
    TResult Function()? valid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Invalid value) invalid,
    required TResult Function(_Valid value) valid,
  }) {
    return valid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Valid value)? valid,
  }) {
    return valid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Invalid value)? invalid,
    TResult Function(_Valid value)? valid,
    required TResult orElse(),
  }) {
    if (valid != null) {
      return valid(this);
    }
    return orElse();
  }
}

abstract class _Valid implements ChangePasswordState {
  const factory _Valid() = _$_Valid;
}
