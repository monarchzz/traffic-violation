// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ReportEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ReportModel report) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ReportModel report)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ReportModel report)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_SendEvent value) send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SendEvent value)? send,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SendEvent value)? send,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportEventCopyWith<$Res> {
  factory $ReportEventCopyWith(
          ReportEvent value, $Res Function(ReportEvent) then) =
      _$ReportEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReportEventCopyWithImpl<$Res> implements $ReportEventCopyWith<$Res> {
  _$ReportEventCopyWithImpl(this._value, this._then);

  final ReportEvent _value;
  // ignore: unused_field
  final $Res Function(ReportEvent) _then;
}

/// @nodoc
abstract class _$$_StartedEventCopyWith<$Res> {
  factory _$$_StartedEventCopyWith(
          _$_StartedEvent value, $Res Function(_$_StartedEvent) then) =
      __$$_StartedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res>
    extends _$ReportEventCopyWithImpl<$Res>
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
    return 'ReportEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ReportEvent.started'));
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
    required TResult Function(ReportModel report) send,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ReportModel report)? send,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ReportModel report)? send,
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
    required TResult Function(_SendEvent value) send,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SendEvent value)? send,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SendEvent value)? send,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements ReportEvent {
  const factory _StartedEvent() = _$_StartedEvent;
}

/// @nodoc
abstract class _$$_SendEventCopyWith<$Res> {
  factory _$$_SendEventCopyWith(
          _$_SendEvent value, $Res Function(_$_SendEvent) then) =
      __$$_SendEventCopyWithImpl<$Res>;
  $Res call({ReportModel report});

  $ReportModelCopyWith<$Res> get report;
}

/// @nodoc
class __$$_SendEventCopyWithImpl<$Res> extends _$ReportEventCopyWithImpl<$Res>
    implements _$$_SendEventCopyWith<$Res> {
  __$$_SendEventCopyWithImpl(
      _$_SendEvent _value, $Res Function(_$_SendEvent) _then)
      : super(_value, (v) => _then(v as _$_SendEvent));

  @override
  _$_SendEvent get _value => super._value as _$_SendEvent;

  @override
  $Res call({
    Object? report = freezed,
  }) {
    return _then(_$_SendEvent(
      report: report == freezed
          ? _value.report
          : report // ignore: cast_nullable_to_non_nullable
              as ReportModel,
    ));
  }

  @override
  $ReportModelCopyWith<$Res> get report {
    return $ReportModelCopyWith<$Res>(_value.report, (value) {
      return _then(_value.copyWith(report: value));
    });
  }
}

/// @nodoc

class _$_SendEvent with DiagnosticableTreeMixin implements _SendEvent {
  const _$_SendEvent({required this.report});

  @override
  final ReportModel report;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportEvent.send(report: $report)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportEvent.send'))
      ..add(DiagnosticsProperty('report', report));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendEvent &&
            const DeepCollectionEquality().equals(other.report, report));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(report));

  @JsonKey(ignore: true)
  @override
  _$$_SendEventCopyWith<_$_SendEvent> get copyWith =>
      __$$_SendEventCopyWithImpl<_$_SendEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ReportModel report) send,
  }) {
    return send(report);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ReportModel report)? send,
  }) {
    return send?.call(report);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ReportModel report)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(report);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_SendEvent value) send,
  }) {
    return send(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SendEvent value)? send,
  }) {
    return send?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SendEvent value)? send,
    required TResult orElse(),
  }) {
    if (send != null) {
      return send(this);
    }
    return orElse();
  }
}

abstract class _SendEvent implements ReportEvent {
  const factory _SendEvent({required final ReportModel report}) = _$_SendEvent;

  ReportModel get report;
  @JsonKey(ignore: true)
  _$$_SendEventCopyWith<_$_SendEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReportState {
  bool? get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReportStateCopyWith<ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res>;
  $Res call({bool? isLoading});
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res> implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  final ReportState _value;
  // ignore: unused_field
  final $Res Function(ReportState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_ReportStateCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$$_ReportStateCopyWith(
          _$_ReportState value, $Res Function(_$_ReportState) then) =
      __$$_ReportStateCopyWithImpl<$Res>;
  @override
  $Res call({bool? isLoading});
}

/// @nodoc
class __$$_ReportStateCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res>
    implements _$$_ReportStateCopyWith<$Res> {
  __$$_ReportStateCopyWithImpl(
      _$_ReportState _value, $Res Function(_$_ReportState) _then)
      : super(_value, (v) => _then(v as _$_ReportState));

  @override
  _$_ReportState get _value => super._value as _$_ReportState;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_$_ReportState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ReportState with DiagnosticableTreeMixin implements _ReportState {
  _$_ReportState({this.isLoading});

  @override
  final bool? isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ReportState(isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ReportState'))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReportState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_ReportStateCopyWith<_$_ReportState> get copyWith =>
      __$$_ReportStateCopyWithImpl<_$_ReportState>(this, _$identity);
}

abstract class _ReportState implements ReportState {
  factory _ReportState({final bool? isLoading}) = _$_ReportState;

  @override
  bool? get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ReportStateCopyWith<_$_ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}
