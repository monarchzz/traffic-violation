import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/repository/comment_repository/model/comment_model.dart';

class CommentRepository {
  CommentRepository({required this.dio});

  final Dio dio;

  Future<bool> createComment(String text, String violationId) async {
    try {
      final response = await dio.post<dynamic>(
        '/comment',
        data: {'text': text, 'violationId': violationId},
      );

      if (response.statusCode != 201) return false;
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  Future<bool> updateComment(String text, String id) async {
    try {
      final response = await dio.put<dynamic>(
        '/comment',
        data: {'text': text, 'id': id},
      );

      if (response.statusCode != 200) return false;
      return true;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return false;
    }
  }

  Future<CommentModel?> getComments({
    required String violationId,
    required int pageIndex,
  }) async {
    try {
      final response = await dio.post<Map<String, dynamic>>(
        '/comment/get-by-violation',
        data: {
          'violationId': violationId,
          'pageIndex': pageIndex,
          'pageSize': 5,
        },
      );

      if (response.data == null) {
        return null;
      }

      final comment = CommentModel.fromJson(response.data!);
      return comment;
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return null;
    }
  }
}
