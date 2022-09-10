// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'law_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LawEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? violationId) started,
    required TResult Function() saveViolation,
    required TResult Function(String text, String violationId) comment,
    required TResult Function() nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? violationId)? started,
    TResult Function()? saveViolation,
    TResult Function(String text, String violationId)? comment,
    TResult Function()? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? violationId)? started,
    TResult Function()? saveViolation,
    TResult Function(String text, String violationId)? comment,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_SaveViolationEvent value) saveViolation,
    required TResult Function(_CommentEvent value) comment,
    required TResult Function(_NextPageEvent value) nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SaveViolationEvent value)? saveViolation,
    TResult Function(_CommentEvent value)? comment,
    TResult Function(_NextPageEvent value)? nextPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SaveViolationEvent value)? saveViolation,
    TResult Function(_CommentEvent value)? comment,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LawEventCopyWith<$Res> {
  factory $LawEventCopyWith(LawEvent value, $Res Function(LawEvent) then) =
      _$LawEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LawEventCopyWithImpl<$Res> implements $LawEventCopyWith<$Res> {
  _$LawEventCopyWithImpl(this._value, this._then);

  final LawEvent _value;
  // ignore: unused_field
  final $Res Function(LawEvent) _then;
}

/// @nodoc
abstract class _$$_StartedEventCopyWith<$Res> {
  factory _$$_StartedEventCopyWith(
          _$_StartedEvent value, $Res Function(_$_StartedEvent) then) =
      __$$_StartedEventCopyWithImpl<$Res>;
  $Res call({String? violationId});
}

/// @nodoc
class __$$_StartedEventCopyWithImpl<$Res> extends _$LawEventCopyWithImpl<$Res>
    implements _$$_StartedEventCopyWith<$Res> {
  __$$_StartedEventCopyWithImpl(
      _$_StartedEvent _value, $Res Function(_$_StartedEvent) _then)
      : super(_value, (v) => _then(v as _$_StartedEvent));

  @override
  _$_StartedEvent get _value => super._value as _$_StartedEvent;

  @override
  $Res call({
    Object? violationId = freezed,
  }) {
    return _then(_$_StartedEvent(
      violationId: violationId == freezed
          ? _value.violationId
          : violationId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_StartedEvent with DiagnosticableTreeMixin implements _StartedEvent {
  const _$_StartedEvent({this.violationId});

  @override
  final String? violationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LawEvent.started(violationId: $violationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LawEvent.started'))
      ..add(DiagnosticsProperty('violationId', violationId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartedEvent &&
            const DeepCollectionEquality()
                .equals(other.violationId, violationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(violationId));

  @JsonKey(ignore: true)
  @override
  _$$_StartedEventCopyWith<_$_StartedEvent> get copyWith =>
      __$$_StartedEventCopyWithImpl<_$_StartedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? violationId) started,
    required TResult Function() saveViolation,
    required TResult Function(String text, String violationId) comment,
    required TResult Function() nextPage,
  }) {
    return started(violationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? violationId)? started,
    TResult Function()? saveViolation,
    TResult Function(String text, String violationId)? comment,
    TResult Function()? nextPage,
  }) {
    return started?.call(violationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? violationId)? started,
    TResult Function()? saveViolation,
    TResult Function(String text, String violationId)? comment,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(violationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_SaveViolationEvent value) saveViolation,
    required TResult Function(_CommentEvent value) comment,
    required TResult Function(_NextPageEvent value) nextPage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SaveViolationEvent value)? saveViolation,
    TResult Function(_CommentEvent value)? comment,
    TResult Function(_NextPageEvent value)? nextPage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SaveViolationEvent value)? saveViolation,
    TResult Function(_CommentEvent value)? comment,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _StartedEvent implements LawEvent {
  const factory _StartedEvent({final String? violationId}) = _$_StartedEvent;

  String? get violationId;
  @JsonKey(ignore: true)
  _$$_StartedEventCopyWith<_$_StartedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveViolationEventCopyWith<$Res> {
  factory _$$_SaveViolationEventCopyWith(_$_SaveViolationEvent value,
          $Res Function(_$_SaveViolationEvent) then) =
      __$$_SaveViolationEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SaveViolationEventCopyWithImpl<$Res>
    extends _$LawEventCopyWithImpl<$Res>
    implements _$$_SaveViolationEventCopyWith<$Res> {
  __$$_SaveViolationEventCopyWithImpl(
      _$_SaveViolationEvent _value, $Res Function(_$_SaveViolationEvent) _then)
      : super(_value, (v) => _then(v as _$_SaveViolationEvent));

  @override
  _$_SaveViolationEvent get _value => super._value as _$_SaveViolationEvent;
}

/// @nodoc

class _$_SaveViolationEvent
    with DiagnosticableTreeMixin
    implements _SaveViolationEvent {
  const _$_SaveViolationEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LawEvent.saveViolation()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LawEvent.saveViolation'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SaveViolationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? violationId) started,
    required TResult Function() saveViolation,
    required TResult Function(String text, String violationId) comment,
    required TResult Function() nextPage,
  }) {
    return saveViolation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? violationId)? started,
    TResult Function()? saveViolation,
    TResult Function(String text, String violationId)? comment,
    TResult Function()? nextPage,
  }) {
    return saveViolation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? violationId)? started,
    TResult Function()? saveViolation,
    TResult Function(String text, String violationId)? comment,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) {
    if (saveViolation != null) {
      return saveViolation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_SaveViolationEvent value) saveViolation,
    required TResult Function(_CommentEvent value) comment,
    required TResult Function(_NextPageEvent value) nextPage,
  }) {
    return saveViolation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SaveViolationEvent value)? saveViolation,
    TResult Function(_CommentEvent value)? comment,
    TResult Function(_NextPageEvent value)? nextPage,
  }) {
    return saveViolation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SaveViolationEvent value)? saveViolation,
    TResult Function(_CommentEvent value)? comment,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) {
    if (saveViolation != null) {
      return saveViolation(this);
    }
    return orElse();
  }
}

abstract class _SaveViolationEvent implements LawEvent {
  const factory _SaveViolationEvent() = _$_SaveViolationEvent;
}

/// @nodoc
abstract class _$$_CommentEventCopyWith<$Res> {
  factory _$$_CommentEventCopyWith(
          _$_CommentEvent value, $Res Function(_$_CommentEvent) then) =
      __$$_CommentEventCopyWithImpl<$Res>;
  $Res call({String text, String violationId});
}

/// @nodoc
class __$$_CommentEventCopyWithImpl<$Res> extends _$LawEventCopyWithImpl<$Res>
    implements _$$_CommentEventCopyWith<$Res> {
  __$$_CommentEventCopyWithImpl(
      _$_CommentEvent _value, $Res Function(_$_CommentEvent) _then)
      : super(_value, (v) => _then(v as _$_CommentEvent));

  @override
  _$_CommentEvent get _value => super._value as _$_CommentEvent;

  @override
  $Res call({
    Object? text = freezed,
    Object? violationId = freezed,
  }) {
    return _then(_$_CommentEvent(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      violationId: violationId == freezed
          ? _value.violationId
          : violationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CommentEvent with DiagnosticableTreeMixin implements _CommentEvent {
  const _$_CommentEvent({required this.text, required this.violationId});

  @override
  final String text;
  @override
  final String violationId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LawEvent.comment(text: $text, violationId: $violationId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LawEvent.comment'))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('violationId', violationId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CommentEvent &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality()
                .equals(other.violationId, violationId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(violationId));

  @JsonKey(ignore: true)
  @override
  _$$_CommentEventCopyWith<_$_CommentEvent> get copyWith =>
      __$$_CommentEventCopyWithImpl<_$_CommentEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? violationId) started,
    required TResult Function() saveViolation,
    required TResult Function(String text, String violationId) comment,
    required TResult Function() nextPage,
  }) {
    return comment(text, violationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? violationId)? started,
    TResult Function()? saveViolation,
    TResult Function(String text, String violationId)? comment,
    TResult Function()? nextPage,
  }) {
    return comment?.call(text, violationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? violationId)? started,
    TResult Function()? saveViolation,
    TResult Function(String text, String violationId)? comment,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment(text, violationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_SaveViolationEvent value) saveViolation,
    required TResult Function(_CommentEvent value) comment,
    required TResult Function(_NextPageEvent value) nextPage,
  }) {
    return comment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SaveViolationEvent value)? saveViolation,
    TResult Function(_CommentEvent value)? comment,
    TResult Function(_NextPageEvent value)? nextPage,
  }) {
    return comment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SaveViolationEvent value)? saveViolation,
    TResult Function(_CommentEvent value)? comment,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment(this);
    }
    return orElse();
  }
}

abstract class _CommentEvent implements LawEvent {
  const factory _CommentEvent(
      {required final String text,
      required final String violationId}) = _$_CommentEvent;

  String get text;
  String get violationId;
  @JsonKey(ignore: true)
  _$$_CommentEventCopyWith<_$_CommentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NextPageEventCopyWith<$Res> {
  factory _$$_NextPageEventCopyWith(
          _$_NextPageEvent value, $Res Function(_$_NextPageEvent) then) =
      __$$_NextPageEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NextPageEventCopyWithImpl<$Res> extends _$LawEventCopyWithImpl<$Res>
    implements _$$_NextPageEventCopyWith<$Res> {
  __$$_NextPageEventCopyWithImpl(
      _$_NextPageEvent _value, $Res Function(_$_NextPageEvent) _then)
      : super(_value, (v) => _then(v as _$_NextPageEvent));

  @override
  _$_NextPageEvent get _value => super._value as _$_NextPageEvent;
}

/// @nodoc

class _$_NextPageEvent with DiagnosticableTreeMixin implements _NextPageEvent {
  const _$_NextPageEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LawEvent.nextPage()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LawEvent.nextPage'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NextPageEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? violationId) started,
    required TResult Function() saveViolation,
    required TResult Function(String text, String violationId) comment,
    required TResult Function() nextPage,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? violationId)? started,
    TResult Function()? saveViolation,
    TResult Function(String text, String violationId)? comment,
    TResult Function()? nextPage,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? violationId)? started,
    TResult Function()? saveViolation,
    TResult Function(String text, String violationId)? comment,
    TResult Function()? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartedEvent value) started,
    required TResult Function(_SaveViolationEvent value) saveViolation,
    required TResult Function(_CommentEvent value) comment,
    required TResult Function(_NextPageEvent value) nextPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SaveViolationEvent value)? saveViolation,
    TResult Function(_CommentEvent value)? comment,
    TResult Function(_NextPageEvent value)? nextPage,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartedEvent value)? started,
    TResult Function(_SaveViolationEvent value)? saveViolation,
    TResult Function(_CommentEvent value)? comment,
    TResult Function(_NextPageEvent value)? nextPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class _NextPageEvent implements LawEvent {
  const factory _NextPageEvent() = _$_NextPageEvent;
}

/// @nodoc
mixin _$LawState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Law law, bool? isSaved, int pageIndex,
            List<CommentItemModel> comments, bool hasNextPage)
        success,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Law law, bool? isSaved, int pageIndex,
            List<CommentItemModel> comments, bool hasNextPage)?
        success,
    TResult Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Law law, bool? isSaved, int pageIndex,
            List<CommentItemModel> comments, bool hasNextPage)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LawStateCopyWith<$Res> {
  factory $LawStateCopyWith(LawState value, $Res Function(LawState) then) =
      _$LawStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LawStateCopyWithImpl<$Res> implements $LawStateCopyWith<$Res> {
  _$LawStateCopyWithImpl(this._value, this._then);

  final LawState _value;
  // ignore: unused_field
  final $Res Function(LawState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$LawStateCopyWithImpl<$Res>
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
    return 'LawState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'LawState.initial'));
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
    required TResult Function(Law law, bool? isSaved, int pageIndex,
            List<CommentItemModel> comments, bool hasNextPage)
        success,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Law law, bool? isSaved, int pageIndex,
            List<CommentItemModel> comments, bool hasNextPage)?
        success,
    TResult Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Law law, bool? isSaved, int pageIndex,
            List<CommentItemModel> comments, bool hasNextPage)?
        success,
    TResult Function(String error)? failure,
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
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Initial implements LawState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
  $Res call(
      {Law law,
      bool? isSaved,
      int pageIndex,
      List<CommentItemModel> comments,
      bool hasNextPage});

  $LawCopyWith<$Res> get law;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res> extends _$LawStateCopyWithImpl<$Res>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, (v) => _then(v as _$_Success));

  @override
  _$_Success get _value => super._value as _$_Success;

  @override
  $Res call({
    Object? law = freezed,
    Object? isSaved = freezed,
    Object? pageIndex = freezed,
    Object? comments = freezed,
    Object? hasNextPage = freezed,
  }) {
    return _then(_$_Success(
      law: law == freezed
          ? _value.law
          : law // ignore: cast_nullable_to_non_nullable
              as Law,
      isSaved: isSaved == freezed
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      pageIndex: pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      comments: comments == freezed
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentItemModel>,
      hasNextPage: hasNextPage == freezed
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $LawCopyWith<$Res> get law {
    return $LawCopyWith<$Res>(_value.law, (value) {
      return _then(_value.copyWith(law: value));
    });
  }
}

/// @nodoc

class _$_Success with DiagnosticableTreeMixin implements _Success {
  const _$_Success(
      {required this.law,
      this.isSaved,
      required this.pageIndex,
      required final List<CommentItemModel> comments,
      required this.hasNextPage})
      : _comments = comments;

  @override
  final Law law;
  @override
  final bool? isSaved;
  @override
  final int pageIndex;
  final List<CommentItemModel> _comments;
  @override
  List<CommentItemModel> get comments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  final bool hasNextPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LawState.success(law: $law, isSaved: $isSaved, pageIndex: $pageIndex, comments: $comments, hasNextPage: $hasNextPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LawState.success'))
      ..add(DiagnosticsProperty('law', law))
      ..add(DiagnosticsProperty('isSaved', isSaved))
      ..add(DiagnosticsProperty('pageIndex', pageIndex))
      ..add(DiagnosticsProperty('comments', comments))
      ..add(DiagnosticsProperty('hasNextPage', hasNextPage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success &&
            const DeepCollectionEquality().equals(other.law, law) &&
            const DeepCollectionEquality().equals(other.isSaved, isSaved) &&
            const DeepCollectionEquality().equals(other.pageIndex, pageIndex) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            const DeepCollectionEquality()
                .equals(other.hasNextPage, hasNextPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(law),
      const DeepCollectionEquality().hash(isSaved),
      const DeepCollectionEquality().hash(pageIndex),
      const DeepCollectionEquality().hash(_comments),
      const DeepCollectionEquality().hash(hasNextPage));

  @JsonKey(ignore: true)
  @override
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      __$$_SuccessCopyWithImpl<_$_Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Law law, bool? isSaved, int pageIndex,
            List<CommentItemModel> comments, bool hasNextPage)
        success,
    required TResult Function(String error) failure,
  }) {
    return success(law, isSaved, pageIndex, comments, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Law law, bool? isSaved, int pageIndex,
            List<CommentItemModel> comments, bool hasNextPage)?
        success,
    TResult Function(String error)? failure,
  }) {
    return success?.call(law, isSaved, pageIndex, comments, hasNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Law law, bool? isSaved, int pageIndex,
            List<CommentItemModel> comments, bool hasNextPage)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(law, isSaved, pageIndex, comments, hasNextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Success implements LawState {
  const factory _Success(
      {required final Law law,
      final bool? isSaved,
      required final int pageIndex,
      required final List<CommentItemModel> comments,
      required final bool hasNextPage}) = _$_Success;

  Law get law;
  bool? get isSaved;
  int get pageIndex;
  List<CommentItemModel> get comments;
  bool get hasNextPage;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<_$_Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$LawStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Failure(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Failure with DiagnosticableTreeMixin implements _Failure {
  const _$_Failure({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LawState.failure(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LawState.failure'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Law law, bool? isSaved, int pageIndex,
            List<CommentItemModel> comments, bool hasNextPage)
        success,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Law law, bool? isSaved, int pageIndex,
            List<CommentItemModel> comments, bool hasNextPage)?
        success,
    TResult Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Law law, bool? isSaved, int pageIndex,
            List<CommentItemModel> comments, bool hasNextPage)?
        success,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
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

abstract class _Failure implements LawState {
  const factory _Failure({required final String error}) = _$_Failure;

  String get error;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
