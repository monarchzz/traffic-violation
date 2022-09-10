import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/common/constant/miscellaneous.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DioHelper {
  DioHelper({required this.dio, required this.sharedPreferences});

  final Dio dio;
  final SharedPreferences sharedPreferences;
  String token = '';

  Future<void> initApiClient() async {
    token = sharedPreferences.getString(accessTokenRefs) ?? '';

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Authorization'] =
              'Bearer ${sharedPreferences.getString(accessTokenRefs) ?? ''}';
          return handler.next(options);
        },
        onError: (error, handler) async {
          final origin = error.response;

          if (origin != null && origin.statusCode == 401) {
            final refreshTokenData =
                sharedPreferences.getString(refreshTokenRefs) ?? '';
            if (refreshTokenData.isNotEmpty) {
              try {
                final data = await dio.post<dynamic>(
                  '/auth/refreshToken',
                  data: {'token': refreshTokenData},
                );

                // ignore: avoid_dynamic_calls
                final accessToken = data.data['accessToken'] as String;
                // ignore: avoid_dynamic_calls
                final refreshToken = data.data['refreshToken'] as String;

                await sharedPreferences.setString(accessTokenRefs, accessToken);
                await sharedPreferences.setString(
                  refreshTokenRefs,
                  refreshToken,
                );
                token = accessToken;

                if (kDebugMode) {
                  print('new token');
                }

                origin.headers.set('Authorization', 'Bearer $accessToken');
                final x = error.requestOptions;
                final newRequest = await dio.request<Map<String, dynamic>>(
                  x.path,
                  data: x.data,
                  queryParameters: x.queryParameters,
                );
                handler.resolve(newRequest);
              } on DioError catch (e) {
                handler.next(e);
              }
            }
          }

          return handler.next(error);
        },
      ),
    );
  }
}
