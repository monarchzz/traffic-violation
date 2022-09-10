// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkException {
  String? get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkExceptionCopyWith<NetworkException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(
          NetworkException value, $Res Function(NetworkException) then) =
      _$NetworkExceptionCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(this._value, this._then);

  final NetworkException _value;
  // ignore: unused_field
  final $Res Function(NetworkException) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NetworkExceptionCopyWith<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  factory _$$_NetworkExceptionCopyWith(
          _$_NetworkException value, $Res Function(_$_NetworkException) then) =
      __$$_NetworkExceptionCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class __$$_NetworkExceptionCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$_NetworkExceptionCopyWith<$Res> {
  __$$_NetworkExceptionCopyWithImpl(
      _$_NetworkException _value, $Res Function(_$_NetworkException) _then)
      : super(_value, (v) => _then(v as _$_NetworkException));

  @override
  _$_NetworkException get _value => super._value as _$_NetworkException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_NetworkException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NetworkException implements _NetworkException {
  _$_NetworkException({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkException &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_NetworkExceptionCopyWith<_$_NetworkException> get copyWith =>
      __$$_NetworkExceptionCopyWithImpl<_$_NetworkException>(this, _$identity);
}

abstract class _NetworkException implements NetworkException {
  factory _NetworkException({final String? message}) = _$_NetworkException;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_NetworkExceptionCopyWith<_$_NetworkException> get copyWith =>
      throw _privateConstructorUsedError;
}
