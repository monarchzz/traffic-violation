import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/model/model.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_boilerplate/repository/violation_repository/model/get_violation_model.dart';
import 'package:flutter_boilerplate/repository/violation_repository/model/model.dart';

class ViolationRepository {
  const ViolationRepository(
      {required Dio dio,
      required AuthenticationRepository authenticationRepository})
      : _dio = dio,
        _authenticationRepository = authenticationRepository;

  final Dio _dio;
  final AuthenticationRepository _authenticationRepository;

  Future<ApiResponse<SearchViolationModel>> search({
    required String keyword,
    required int pageIndex,
    Vehicle? affectedVehicle,
    int? minPenalty,
    int? maxPenalty,
  }) async {
    try {
      final response = await _dio.post<Map<String, dynamic>>(
        '/violation/search',
        data: {
          'keyword': keyword,
          'pageIndex': pageIndex,
          'pageSize': violationSearchLength,
          'affectedVehicle': affectedVehicle?.toEnumName(),
          'minPenalty': minPenalty,
          'maxPenalty': maxPenalty,
        },
      );

      if (response.data == null) {
        return ApiResponse.error(NetworkException(message: 'null'));
      }

      final violationModel = SearchViolationModel.fromJson(response.data!);
      return ApiResponse.success(violationModel);
    } catch (e) {
      return ApiResponse.error(NetworkException(message: e.toString()));
    }
  }

  Future<ApiResponse<GetViolationModel>> getViolation(String id) async {
    try {
      final response = await _dio.get<Map<String, dynamic>>(
        '/violation',
        queryParameters: {
          'id': id,
        },
      );

      if (response.data == null) {
        return ApiResponse.error(NetworkException(message: 'null'));
      }

      final violation = GetViolationModel.fromJson(response.data!);
      return ApiResponse.success(violation);
    } catch (e) {
      return ApiResponse.error(NetworkException(message: e.toString()));
    }
  }

  Future<ApiResponse<List<SearchItemViolationModel>>> mostViewed() async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/violation/most-viewed',
      );

      if (response.data == null) {
        return ApiResponse.error(
          NetworkException(
            message: 'Error with status code: ${response.statusCode}',
          ),
        );
      }

      final violations = response.data!.map(
        (e) => SearchItemViolationModel.fromJson(e as Map<String, dynamic>),
      );

      return ApiResponse.success(violations.toList());
    } catch (e) {
      return ApiResponse.error(NetworkException(message: e.toString()));
    }
  }

  Future<bool?> isSavedViolation(String id) async {
    if (_authenticationRepository.hasToken == false) return null;
    try {
      final response = await _dio.get<dynamic>(
        '/user/is-saved-violations',
        queryParameters: {
          'violationId': id,
        },
      );

      if (response.data == null) {
        return false;
      }
      return response.data! == 'true';
    } catch (e) {
      return false;
    }
  }

  Future<bool> saveViolation(String id) async {
    if (_authenticationRepository.hasToken == false) return false;
    try {
      final response = await _dio.put<dynamic>(
        '/user/save-violation',
        data: {'violationId': id},
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> unsavedViolation(String id) async {
    if (_authenticationRepository.hasToken == false) return false;
    try {
      final response = await _dio.put<dynamic>(
        '/user/unsaved-violation',
        data: {'violationId': id},
      );

      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<ApiResponse<List<SearchItemViolationModel>>> getSavedViolation(
    int size,
  ) async {
    try {
      final response = await _dio.get<List<dynamic>>(
        '/user/saved-violations',
        queryParameters: {
          'size': size,
        },
      );

      if (response.data == null) {
        return ApiResponse.error(NetworkException(message: 'null'));
      }

      final data = response.data!
          .map((e) =>
              SearchItemViolationModel.fromJson(e as Map<String, dynamic>))
          .toList();
      return ApiResponse.success(data);
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return ApiResponse.error(NetworkException(message: e.toString()));
    }
  }
}
