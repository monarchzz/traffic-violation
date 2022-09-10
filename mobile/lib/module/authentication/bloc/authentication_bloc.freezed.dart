// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)
        updateData,
    required TResult Function(String email, String password) loginSubmit,
    required TResult Function(
            String email,
            String password,
            String repeatPassword,
            String name,
            String phone,
            DateTime birthday,
            Gender gender)
        signUpSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)?
        updateData,
    TResult Function(String email, String password)? loginSubmit,
    TResult Function(String email, String password, String repeatPassword,
            String name, String phone, DateTime birthday, Gender gender)?
        signUpSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)?
        updateData,
    TResult Function(String email, String password)? loginSubmit,
    TResult Function(String email, String password, String repeatPassword,
            String name, String phone, DateTime birthday, Gender gender)?
        signUpSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_UpdateEvent value) updateData,
    required TResult Function(_LoginSubmit value) loginSubmit,
    required TResult Function(_SignUpSubmit value) signUpSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? updateData,
    TResult Function(_LoginSubmit value)? loginSubmit,
    TResult Function(_SignUpSubmit value)? signUpSubmit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? updateData,
    TResult Function(_LoginSubmit value)? loginSubmit,
    TResult Function(_SignUpSubmit value)? signUpSubmit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class _$$_StartedEventCopyWith<$Res> {
  factory _$$_StartedEventCopyWith(
          _$_StartedEvent value, $Res Function(_$_StartedEvent) then) =
      __$$_StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
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
    return 'AuthenticationEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthenticationEvent.started'));
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
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)
        updateData,
    required TResult Function(String email, String password) loginSubmit,
    required TResult Function(
            String email,
            String password,
            String repeatPassword,
            String name,
            String phone,
            DateTime birthday,
            Gender gender)
        signUpSubmit,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)?
        updateData,
    TResult Function(String email, String password)? loginSubmit,
    TResult Function(String email, String password, String repeatPassword,
            String name, String phone, DateTime birthday, Gender gender)?
        signUpSubmit,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)?
        updateData,
    TResult Function(String email, String password)? loginSubmit,
    TResult Function(String email, String password, String repeatPassword,
            String name, String phone, DateTime birthday, Gender gender)?
        signUpSubmit,
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
    required TResult Function(_UpdateEvent value) updateData,
    required TResult Function(_LoginSubmit value) loginSubmit,
    required TResult Function(_SignUpSubmit value) signUpSubmit,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? updateData,
    TResult Function(_LoginSubmit value)? loginSubmit,
    TResult Function(_SignUpSubmit value)? signUpSubmit,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? updateData,
    TResult Function(_LoginSubmit value)? loginSubmit,
    TResult Function(_SignUpSubmit value)? signUpSubmit,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements AuthenticationEvent {
  const factory _StartedEvent() = _$_StartedEvent;
}

/// @nodoc
abstract class _$$_UpdateEventCopyWith<$Res> {
  factory _$$_UpdateEventCopyWith(
          _$_UpdateEvent value, $Res Function(_$_UpdateEvent) then) =
      __$$_UpdateEventCopyWithImpl<$Res>;
  $Res call(
      {String? email,
      String? password,
      String? signUpEmail,
      String? signUpPassword,
      String? repeatPassword,
      String? name,
      String? phone,
      DateTime? birthday,
      Gender? gender});
}

/// @nodoc
class __$$_UpdateEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_UpdateEventCopyWith<$Res> {
  __$$_UpdateEventCopyWithImpl(
      _$_UpdateEvent _value, $Res Function(_$_UpdateEvent) _then)
      : super(_value, (v) => _then(v as _$_UpdateEvent));

  @override
  _$_UpdateEvent get _value => super._value as _$_UpdateEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? signUpEmail = freezed,
    Object? signUpPassword = freezed,
    Object? repeatPassword = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$_UpdateEvent(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      signUpEmail: signUpEmail == freezed
          ? _value.signUpEmail
          : signUpEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      signUpPassword: signUpPassword == freezed
          ? _value.signUpPassword
          : signUpPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc

class _$_UpdateEvent with DiagnosticableTreeMixin implements _UpdateEvent {
  const _$_UpdateEvent(
      {this.email,
      this.password,
      this.signUpEmail,
      this.signUpPassword,
      this.repeatPassword,
      this.name,
      this.phone,
      this.birthday,
      this.gender});

  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? signUpEmail;
  @override
  final String? signUpPassword;
  @override
  final String? repeatPassword;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final DateTime? birthday;
  @override
  final Gender? gender;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.updateData(email: $email, password: $password, signUpEmail: $signUpEmail, signUpPassword: $signUpPassword, repeatPassword: $repeatPassword, name: $name, phone: $phone, birthday: $birthday, gender: $gender)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationEvent.updateData'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('signUpEmail', signUpEmail))
      ..add(DiagnosticsProperty('signUpPassword', signUpPassword))
      ..add(DiagnosticsProperty('repeatPassword', repeatPassword))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('birthday', birthday))
      ..add(DiagnosticsProperty('gender', gender));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateEvent &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.signUpEmail, signUpEmail) &&
            const DeepCollectionEquality()
                .equals(other.signUpPassword, signUpPassword) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality().equals(other.gender, gender));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(signUpEmail),
      const DeepCollectionEquality().hash(signUpPassword),
      const DeepCollectionEquality().hash(repeatPassword),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(gender));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      __$$_UpdateEventCopyWithImpl<_$_UpdateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)
        updateData,
    required TResult Function(String email, String password) loginSubmit,
    required TResult Function(
            String email,
            String password,
            String repeatPassword,
            String name,
            String phone,
            DateTime birthday,
            Gender gender)
        signUpSubmit,
  }) {
    return updateData(email, password, signUpEmail, signUpPassword,
        repeatPassword, name, phone, birthday, gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)?
        updateData,
    TResult Function(String email, String password)? loginSubmit,
    TResult Function(String email, String password, String repeatPassword,
            String name, String phone, DateTime birthday, Gender gender)?
        signUpSubmit,
  }) {
    return updateData?.call(email, password, signUpEmail, signUpPassword,
        repeatPassword, name, phone, birthday, gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)?
        updateData,
    TResult Function(String email, String password)? loginSubmit,
    TResult Function(String email, String password, String repeatPassword,
            String name, String phone, DateTime birthday, Gender gender)?
        signUpSubmit,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(email, password, signUpEmail, signUpPassword,
          repeatPassword, name, phone, birthday, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_UpdateEvent value) updateData,
    required TResult Function(_LoginSubmit value) loginSubmit,
    required TResult Function(_SignUpSubmit value) signUpSubmit,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? updateData,
    TResult Function(_LoginSubmit value)? loginSubmit,
    TResult Function(_SignUpSubmit value)? signUpSubmit,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? updateData,
    TResult Function(_LoginSubmit value)? loginSubmit,
    TResult Function(_SignUpSubmit value)? signUpSubmit,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent implements AuthenticationEvent {
  const factory _UpdateEvent(
      {final String? email,
      final String? password,
      final String? signUpEmail,
      final String? signUpPassword,
      final String? repeatPassword,
      final String? name,
      final String? phone,
      final DateTime? birthday,
      final Gender? gender}) = _$_UpdateEvent;

  String? get email;
  String? get password;
  String? get signUpEmail;
  String? get signUpPassword;
  String? get repeatPassword;
  String? get name;
  String? get phone;
  DateTime? get birthday;
  Gender? get gender;
  @JsonKey(ignore: true)
  _$$_UpdateEventCopyWith<_$_UpdateEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginSubmitCopyWith<$Res> {
  factory _$$_LoginSubmitCopyWith(
          _$_LoginSubmit value, $Res Function(_$_LoginSubmit) then) =
      __$$_LoginSubmitCopyWithImpl<$Res>;
  $Res call({String email, String password});
}

/// @nodoc
class __$$_LoginSubmitCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_LoginSubmitCopyWith<$Res> {
  __$$_LoginSubmitCopyWithImpl(
      _$_LoginSubmit _value, $Res Function(_$_LoginSubmit) _then)
      : super(_value, (v) => _then(v as _$_LoginSubmit));

  @override
  _$_LoginSubmit get _value => super._value as _$_LoginSubmit;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginSubmit(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginSubmit with DiagnosticableTreeMixin implements _LoginSubmit {
  const _$_LoginSubmit({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.loginSubmit(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationEvent.loginSubmit'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginSubmit &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_LoginSubmitCopyWith<_$_LoginSubmit> get copyWith =>
      __$$_LoginSubmitCopyWithImpl<_$_LoginSubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)
        updateData,
    required TResult Function(String email, String password) loginSubmit,
    required TResult Function(
            String email,
            String password,
            String repeatPassword,
            String name,
            String phone,
            DateTime birthday,
            Gender gender)
        signUpSubmit,
  }) {
    return loginSubmit(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)?
        updateData,
    TResult Function(String email, String password)? loginSubmit,
    TResult Function(String email, String password, String repeatPassword,
            String name, String phone, DateTime birthday, Gender gender)?
        signUpSubmit,
  }) {
    return loginSubmit?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)?
        updateData,
    TResult Function(String email, String password)? loginSubmit,
    TResult Function(String email, String password, String repeatPassword,
            String name, String phone, DateTime birthday, Gender gender)?
        signUpSubmit,
    required TResult orElse(),
  }) {
    if (loginSubmit != null) {
      return loginSubmit(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_UpdateEvent value) updateData,
    required TResult Function(_LoginSubmit value) loginSubmit,
    required TResult Function(_SignUpSubmit value) signUpSubmit,
  }) {
    return loginSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? updateData,
    TResult Function(_LoginSubmit value)? loginSubmit,
    TResult Function(_SignUpSubmit value)? signUpSubmit,
  }) {
    return loginSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? updateData,
    TResult Function(_LoginSubmit value)? loginSubmit,
    TResult Function(_SignUpSubmit value)? signUpSubmit,
    required TResult orElse(),
  }) {
    if (loginSubmit != null) {
      return loginSubmit(this);
    }
    return orElse();
  }
}

abstract class _LoginSubmit implements AuthenticationEvent {
  const factory _LoginSubmit(
      {required final String email,
      required final String password}) = _$_LoginSubmit;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$_LoginSubmitCopyWith<_$_LoginSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SignUpSubmitCopyWith<$Res> {
  factory _$$_SignUpSubmitCopyWith(
          _$_SignUpSubmit value, $Res Function(_$_SignUpSubmit) then) =
      __$$_SignUpSubmitCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String password,
      String repeatPassword,
      String name,
      String phone,
      DateTime birthday,
      Gender gender});
}

/// @nodoc
class __$$_SignUpSubmitCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements _$$_SignUpSubmitCopyWith<$Res> {
  __$$_SignUpSubmitCopyWithImpl(
      _$_SignUpSubmit _value, $Res Function(_$_SignUpSubmit) _then)
      : super(_value, (v) => _then(v as _$_SignUpSubmit));

  @override
  _$_SignUpSubmit get _value => super._value as _$_SignUpSubmit;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? repeatPassword = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
  }) {
    return _then(_$_SignUpSubmit(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
    ));
  }
}

/// @nodoc

class _$_SignUpSubmit with DiagnosticableTreeMixin implements _SignUpSubmit {
  const _$_SignUpSubmit(
      {required this.email,
      required this.password,
      required this.repeatPassword,
      required this.name,
      required this.phone,
      required this.birthday,
      required this.gender});

  @override
  final String email;
  @override
  final String password;
  @override
  final String repeatPassword;
  @override
  final String name;
  @override
  final String phone;
  @override
  final DateTime birthday;
  @override
  final Gender gender;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.signUpSubmit(email: $email, password: $password, repeatPassword: $repeatPassword, name: $name, phone: $phone, birthday: $birthday, gender: $gender)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationEvent.signUpSubmit'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('repeatPassword', repeatPassword))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('birthday', birthday))
      ..add(DiagnosticsProperty('gender', gender));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignUpSubmit &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality().equals(other.gender, gender));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(repeatPassword),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(gender));

  @JsonKey(ignore: true)
  @override
  _$$_SignUpSubmitCopyWith<_$_SignUpSubmit> get copyWith =>
      __$$_SignUpSubmitCopyWithImpl<_$_SignUpSubmit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)
        updateData,
    required TResult Function(String email, String password) loginSubmit,
    required TResult Function(
            String email,
            String password,
            String repeatPassword,
            String name,
            String phone,
            DateTime birthday,
            Gender gender)
        signUpSubmit,
  }) {
    return signUpSubmit(
        email, password, repeatPassword, name, phone, birthday, gender);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)?
        updateData,
    TResult Function(String email, String password)? loginSubmit,
    TResult Function(String email, String password, String repeatPassword,
            String name, String phone, DateTime birthday, Gender gender)?
        signUpSubmit,
  }) {
    return signUpSubmit?.call(
        email, password, repeatPassword, name, phone, birthday, gender);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender)?
        updateData,
    TResult Function(String email, String password)? loginSubmit,
    TResult Function(String email, String password, String repeatPassword,
            String name, String phone, DateTime birthday, Gender gender)?
        signUpSubmit,
    required TResult orElse(),
  }) {
    if (signUpSubmit != null) {
      return signUpSubmit(
          email, password, repeatPassword, name, phone, birthday, gender);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_UpdateEvent value) updateData,
    required TResult Function(_LoginSubmit value) loginSubmit,
    required TResult Function(_SignUpSubmit value) signUpSubmit,
  }) {
    return signUpSubmit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? updateData,
    TResult Function(_LoginSubmit value)? loginSubmit,
    TResult Function(_SignUpSubmit value)? signUpSubmit,
  }) {
    return signUpSubmit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_UpdateEvent value)? updateData,
    TResult Function(_LoginSubmit value)? loginSubmit,
    TResult Function(_SignUpSubmit value)? signUpSubmit,
    required TResult orElse(),
  }) {
    if (signUpSubmit != null) {
      return signUpSubmit(this);
    }
    return orElse();
  }
}

abstract class _SignUpSubmit implements AuthenticationEvent {
  const factory _SignUpSubmit(
      {required final String email,
      required final String password,
      required final String repeatPassword,
      required final String name,
      required final String phone,
      required final DateTime birthday,
      required final Gender gender}) = _$_SignUpSubmit;

  String get email;
  String get password;
  String get repeatPassword;
  String get name;
  String get phone;
  DateTime get birthday;
  Gender get gender;
  @JsonKey(ignore: true)
  _$$_SignUpSubmitCopyWith<_$_SignUpSubmit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender,
            String? error,
            bool? success)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender,
            String? error,
            bool? success)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender,
            String? error,
            bool? success)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
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
    return 'AuthenticationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthenticationState.initial'));
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
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender,
            String? error,
            bool? success)
        data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender,
            String? error,
            bool? success)?
        data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender,
            String? error,
            bool? success)?
        data,
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
    required TResult Function(_Data value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  $Res call(
      {String? email,
      String? password,
      String? signUpEmail,
      String? signUpPassword,
      String? repeatPassword,
      String? name,
      String? phone,
      DateTime? birthday,
      Gender? gender,
      String? error,
      bool? success});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, (v) => _then(v as _$_Data));

  @override
  _$_Data get _value => super._value as _$_Data;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? signUpEmail = freezed,
    Object? signUpPassword = freezed,
    Object? repeatPassword = freezed,
    Object? name = freezed,
    Object? phone = freezed,
    Object? birthday = freezed,
    Object? gender = freezed,
    Object? error = freezed,
    Object? success = freezed,
  }) {
    return _then(_$_Data(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      signUpEmail: signUpEmail == freezed
          ? _value.signUpEmail
          : signUpEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      signUpPassword: signUpPassword == freezed
          ? _value.signUpPassword
          : signUpPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      repeatPassword: repeatPassword == freezed
          ? _value.repeatPassword
          : repeatPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Data with DiagnosticableTreeMixin implements _Data {
  const _$_Data(
      {this.email,
      this.password,
      this.signUpEmail,
      this.signUpPassword,
      this.repeatPassword,
      this.name,
      this.phone,
      this.birthday,
      this.gender,
      this.error,
      this.success});

  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? signUpEmail;
  @override
  final String? signUpPassword;
  @override
  final String? repeatPassword;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final DateTime? birthday;
  @override
  final Gender? gender;
  @override
  final String? error;
  @override
  final bool? success;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState.data(email: $email, password: $password, signUpEmail: $signUpEmail, signUpPassword: $signUpPassword, repeatPassword: $repeatPassword, name: $name, phone: $phone, birthday: $birthday, gender: $gender, error: $error, success: $success)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState.data'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('signUpEmail', signUpEmail))
      ..add(DiagnosticsProperty('signUpPassword', signUpPassword))
      ..add(DiagnosticsProperty('repeatPassword', repeatPassword))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('phone', phone))
      ..add(DiagnosticsProperty('birthday', birthday))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('error', error))
      ..add(DiagnosticsProperty('success', success));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.signUpEmail, signUpEmail) &&
            const DeepCollectionEquality()
                .equals(other.signUpPassword, signUpPassword) &&
            const DeepCollectionEquality()
                .equals(other.repeatPassword, repeatPassword) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(other.success, success));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(signUpEmail),
      const DeepCollectionEquality().hash(signUpPassword),
      const DeepCollectionEquality().hash(repeatPassword),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(success));

  @JsonKey(ignore: true)
  @override
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender,
            String? error,
            bool? success)
        data,
  }) {
    return data(email, password, signUpEmail, signUpPassword, repeatPassword,
        name, phone, birthday, gender, error, success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender,
            String? error,
            bool? success)?
        data,
  }) {
    return data?.call(email, password, signUpEmail, signUpPassword,
        repeatPassword, name, phone, birthday, gender, error, success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(
            String? email,
            String? password,
            String? signUpEmail,
            String? signUpPassword,
            String? repeatPassword,
            String? name,
            String? phone,
            DateTime? birthday,
            Gender? gender,
            String? error,
            bool? success)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(email, password, signUpEmail, signUpPassword, repeatPassword,
          name, phone, birthday, gender, error, success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements AuthenticationState {
  const factory _Data(
      {final String? email,
      final String? password,
      final String? signUpEmail,
      final String? signUpPassword,
      final String? repeatPassword,
      final String? name,
      final String? phone,
      final DateTime? birthday,
      final Gender? gender,
      final String? error,
      final bool? success}) = _$_Data;

  String? get email;
  String? get password;
  String? get signUpEmail;
  String? get signUpPassword;
  String? get repeatPassword;
  String? get name;
  String? get phone;
  DateTime? get birthday;
  Gender? get gender;
  String? get error;
  bool? get success;
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
