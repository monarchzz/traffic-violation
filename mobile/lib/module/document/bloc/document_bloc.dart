import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/module/document/model/document.dart';
import 'package:flutter_boilerplate/module/law/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'document_event.dart';
part 'document_state.dart';
part 'document_bloc.freezed.dart';

class DocumentBloc extends Bloc<DocumentEvent, DocumentState> {
  DocumentBloc({required this.dio, required this.sharedPreferences})
      : super(const DocumentState.initial()) {
    on<_StartedEvent>(_onStarted);
  }

  final Dio dio;
  final SharedPreferences sharedPreferences;

  FutureOr<void> _onStarted(
    _StartedEvent event,
    Emitter<DocumentState> emit,
  ) async {
    try {
      print(event.reference);
      final response = await dio.get<Map<String, dynamic>>(
        '/document',
        queryParameters: {'id': event.reference.documentId},
      );

      if (response.data == null) {
        emit(const DocumentState.failure(error: 'unknown'));
      }

      final document = Document.fromJson(response.data!);
      emit(
        DocumentState.success(
          document: document,
          reference: event.reference,
        ),
      );
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      emit(const DocumentState.failure(error: 'unknown'));
    }
  }
}
