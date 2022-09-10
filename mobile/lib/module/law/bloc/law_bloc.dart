import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/module/law/model/model.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_boilerplate/repository/comment_repository/comment_repository.dart';
import 'package:flutter_boilerplate/repository/comment_repository/model/comment_item_model.dart';
import 'package:flutter_boilerplate/repository/violation_repository/violation_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'law_event.dart';
part 'law_state.dart';
part 'law_bloc.freezed.dart';

class LawBloc extends Bloc<LawEvent, LawState> {
  LawBloc({
    required ViolationRepository violationRepository,
    required CommentRepository commentRepository,
    required AuthenticationRepository authenticationRepository,
  })  : _violationRepository = violationRepository,
        _commentRepository = commentRepository,
        _authenticationRepository = authenticationRepository,
        super(const LawState.initial()) {
    on<_StartedEvent>(_onStarted);
    on<_SaveViolationEvent>(_onSave);
    on<_CommentEvent>(_onComment);
    on<_NextPageEvent>(_onNextPage);
  }

  final ViolationRepository _violationRepository;
  final CommentRepository _commentRepository;
  final AuthenticationRepository _authenticationRepository;

  FutureOr<void> _onStarted(_StartedEvent event, Emitter<LawState> emit) async {
    // final law = MockLaw.law;
    final result =
        (await _violationRepository.getViolation(event.violationId!)).map(
      success: (value) {
        return value.value;
      },
      error: (_) => null,
    );

    final comments = <CommentItemModel>[];
    var hasNextPage = false;

    if (_authenticationRepository.hasToken) {
      final commentResponse = await _commentRepository.getComments(
        violationId: event.violationId!,
        pageIndex: 1,
      );
      if (commentResponse != null) {
        comments.addAll(commentResponse.items);
        hasNextPage = _hasNextIndex(
          commentResponse.total,
          commentResponse.pageIndex,
          commentResponse.pageSize,
        );
      }
    }

    if (result == null) {
      emit(const LawState.failure(error: 'unknown'));
    } else {
      final law = Law(
        id: result.id,
        title: result.title,
        viewCount: result.viewCount,
        minPenalty: result.minPenalty,
        maxPenalty: result.maxPenalty,
        createdAt: result.createdAt,
        images: result.images,
        sections: result.sections
            .map(
              (e) => Section(
                id: e.id,
                type: e.type,
                data: e.data,
                createdAt: e.createdAt,
                penalty: e.penalty,
                reference: e.reference == null
                    ? null
                    : Reference(
                        id: e.reference!.id,
                        startIndex: e.reference!.startIndex,
                        endIndex: e.reference!.endIndex,
                        title: e.reference!.title,
                        createdAt: e.reference!.createdAt,
                        documentId: e.reference?.documentId,
                      ),
              ),
            )
            .toList(),
        affectedVehicle: result.affectedVehicle,
      );
      emit(
        LawState.success(
          law: law,
          isSaved: await _violationRepository.isSavedViolation(result.id),
          comments: comments,
          hasNextPage: hasNextPage,
          pageIndex: 1,
        ),
      );
    }
  }

  FutureOr<void> _onSave(
    _SaveViolationEvent event,
    Emitter<LawState> emit,
  ) async {
    final newState = state.map(
      initial: (_) => null,
      success: (value) => value,
      failure: (_) => null,
    );
    if (newState != null && newState.isSaved != null) {
      emit(
        LawState.success(
          law: newState.law,
          isSaved: !newState.isSaved!,
          comments: newState.comments,
          hasNextPage: newState.hasNextPage,
          pageIndex: newState.pageIndex,
        ),
      );
      if (newState.isSaved == true) {
        await _violationRepository.unsavedViolation(newState.law.id);
      } else {
        await _violationRepository.saveViolation(newState.law.id);
      }
    }
  }

  bool _hasNextIndex(int total, int pageIndex, int pageSize) {
    return total > pageIndex * pageIndex;
  }

  FutureOr<void> _onComment(
    _CommentEvent event,
    Emitter<LawState> emit,
  ) async {
    if (event.text.isNotEmpty) {
      await _commentRepository.createComment(event.text, event.violationId);

      emit(
        (state as _Success).copyWith(
          comments: await _reload(event.violationId),
          hasNextPage: true,
          pageIndex: 1,
        ),
      );
    }
  }

  FutureOr<void> _onNextPage(
    _NextPageEvent event,
    Emitter<LawState> emit,
  ) async {
    final currentState = state as _Success;
    final pageIndex = currentState.pageIndex + 1;
    final commentResponse = await _commentRepository.getComments(
      violationId: currentState.law.id,
      pageIndex: pageIndex,
    );

    if (commentResponse != null) {
      final hasNextPage = _hasNextIndex(
        commentResponse.total,
        commentResponse.pageIndex,
        commentResponse.pageSize,
      );
      emit(
        (state as _Success).copyWith(
          comments: [...currentState.comments, ...commentResponse.items],
          hasNextPage: hasNextPage,
          pageIndex: pageIndex,
        ),
      );
    }
  }

  Future<List<CommentItemModel>> _reload(String violationId) async {
    final commentResponse = await _commentRepository.getComments(
      violationId: violationId,
      pageIndex: 1,
    );
    if (commentResponse != null) {
      return commentResponse.items;
    }
    return [];
  }
}
