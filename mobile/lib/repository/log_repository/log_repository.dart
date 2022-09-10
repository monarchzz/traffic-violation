import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/common/model/model.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum LogType { search, saveResult }

class LogRepository {
  LogRepository({
    required this.authenticationRepository,
    required this.dio,
    required this.sharedPreferences,
  });
  final AuthenticationRepository authenticationRepository;
  final Dio dio;
  final SharedPreferences sharedPreferences;

  Future<ApiResponse<List<String>>> mostSearch() async {
    try {
      final response = await dio.get<List<dynamic>>('/log/most-search');
      if (response.data == null || response.statusCode != 200) {
        return ApiResponse.error(
          NetworkException(
            message: 'Error with status code ${response.statusCode}',
          ),
        );
      }
      final result = response.data!.map((e) => e as String).toList();

      return ApiResponse.success(result);
    } catch (e) {
      return ApiResponse.error(NetworkException(message: e.toString()));
    }
  }

  Future<ApiResponse<List<String>>> searchedLog(int size) async {
    if (authenticationRepository.hasToken) {
      try {
        final response = await dio.get<List<dynamic>>(
          '/log/searched-log',
          queryParameters: {
            'size': size,
          },
        );
        if (response.data == null || response.statusCode != 200) {
          return ApiResponse.error(
            NetworkException(
              message: 'Error with status code ${response.statusCode}',
            ),
          );
        }
        final result = response.data!.map((e) => e as String).toList();

        return ApiResponse.success(result);
      } catch (e) {
        return ApiResponse.error(NetworkException(message: e.toString()));
      }
    } else {
      return const ApiResponse.success(<String>[]);
    }
  }

  Future<void> saveSearchLog(String data, LogType type) async {
    final lowerCaseData = data.toLowerCase();
    switch (type) {
      case LogType.search:
        if (data.isNotEmpty) {
          try {
            if (authenticationRepository.hasToken) {
              await dio.post<dynamic>(
                '/log',
                data: {
                  'type': 'SEARCH',
                  'data': lowerCaseData,
                },
              );
            } else {
              await dio.post<dynamic>(
                '/log/unknown',
                data: {
                  'type': 'SEARCH',
                  'data': lowerCaseData,
                },
              );
            }
          } catch (e) {
            if (kDebugMode) {
              print(e);
            }
          }
        }
        break;
      case LogType.saveResult:
        try {
          if (authenticationRepository.hasToken) {
            await dio.post<dynamic>(
              '/log',
              data: {
                'type': 'SAVE_RESULT',
                'data': lowerCaseData,
              },
            );
          }
        } catch (e) {
          if (kDebugMode) {
            print(e);
          }
        }
        break;
    }
  }
}
