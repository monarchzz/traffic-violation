import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/module/report/model/report_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_event.dart';
part 'report_state.dart';
part 'report_bloc.freezed.dart';

class ReportBloc extends Bloc<ReportEvent, ReportState> {
  ReportBloc({required this.dio}) : super(ReportState()) {
    on<_StartedEvent>(_onStarted);
    on<_SendEvent>(_onSend);
  }

  final Dio dio;

  FutureOr<void> _onStarted(_StartedEvent event, Emitter<ReportState> emit) {}

  FutureOr<void> _onSend(_SendEvent event, Emitter<ReportState> emit) async {
    emit(ReportState(isLoading: true));

    final images = <String>[];

    try {
      for (final image in event.report.images) {
        final formData = FormData.fromMap({
          'file': await MultipartFile.fromFile(image),
        });
        final response =
            await dio.post<dynamic>('/upload/image', data: formData);
        // ignore: avoid_dynamic_calls
        final url = response.data['url'] as String;
        images.add(url);
      }

      await dio.post<dynamic>(
        '/report',
        data: {
          'title': event.report.title,
          'data': event.report.data,
          'images': images,
          'violationId': event.report.violationId,
        },
      );
      emit(ReportState(isLoading: false));
      // if (response.data == null) {}
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
