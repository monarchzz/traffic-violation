part of 'report_bloc.dart';

@freezed
class ReportEvent with _$ReportEvent {
  const factory ReportEvent.started() = _StartedEvent;
  const factory ReportEvent.send({required ReportModel report}) = _SendEvent;
}
