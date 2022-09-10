import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_boilerplate/common/constant/miscellaneous.dart';
import 'package:flutter_boilerplate/module/profile/model/model.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/model/model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenticationRepository {
  AuthenticationRepository({
    required this.dio,
    required this.sharedPreferences,
  }) {
    _token = sharedPreferences.getString(accessTokenRefs) ?? '';
  }

  final Dio dio;
  final SharedPreferences sharedPreferences;
  String _token = '';
  Profile? _profile;

  bool get hasToken {
    return _token.isNotEmpty;
  }

  Profile? get profile => _profile;

  Future<void> init() async {
    await getProfile();
    _token = sharedPreferences.getString(accessTokenRefs) ?? '';
  }

  Future<bool> login(String email, String password) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        '/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      if (result.data != null && result.statusCode == 201) {
        final token = TokenModel.fromJson(result.data!);

        await sharedPreferences.setString(accessTokenRefs, token.accessToken);
        await sharedPreferences.setString(
          refreshTokenRefs,
          token.refreshToken,
        );

        _token = token.accessToken;

        await getProfile();
        // if (profile == null) return false;
        // _profile = profile;

        return true;
      }
    } catch (_) {
      return false;
    }

    return false;
  }

  Future<bool> signUp({
    required String email,
    required String password,
    required String name,
    required String phone,
    required DateTime birthday,
    required Gender gender,
  }) async {
    try {
      final result = await dio.post<Map<String, dynamic>>(
        '/auth/signup',
        data: {
          'email': email,
          'password': password,
          'name': name,
          'phone': phone,
          'birthday': '${birthday.toIso8601String()}Z',
          'gender': gender == Gender.male ? 'MALE' : 'FEMALE',
        },
      );
      if (result.data != null && result.statusCode == 201) {
        final token = TokenModel.fromJson(result.data!);

        await sharedPreferences.setString(accessTokenRefs, token.accessToken);
        await sharedPreferences.setString(
          refreshTokenRefs,
          token.refreshToken,
        );

        _token = token.accessToken;

        await getProfile();
        if (profile == null) return false;
        _profile = profile;

        return true;
      }
    } catch (_) {
      return false;
    }

    return false;
  }

  Future<void> logout() async {
    _token = '';
    _profile = null;
    await sharedPreferences.setString(accessTokenRefs, '');
    await sharedPreferences.setString(
      refreshTokenRefs,
      '',
    );
  }

  Future<bool> selfUpdate({
    String? name,
    String? phone,
    DateTime? birthday,
    Gender? gender,
    String? avatar,
  }) async {
    try {
      final result = await dio.put<dynamic>(
        '/user',
        data: {
          'name': name,
          'phone': phone,
          'birthday':
              birthday == null ? null : '${birthday.toIso8601String()}Z',
          'gender': gender == Gender.male ? 'MALE' : 'FEMALE',
          'avatar': avatar,
        },
      );

      if (result.statusCode == 200) {
        await getProfile();
        return true;
      }
    } catch (_) {
      return false;
    }
    return false;
  }

  Future<Profile?> getProfile() async {
    try {
      final result = await dio.get<Map<String, dynamic>>('/user/profile');
      if (result.data != null && result.statusCode == 200) {
        final profile = Profile.fromJson(result.data!);

        _profile = profile;
        return profile;
      }
    } catch (_) {
      return null;
    }
    return null;
  }

  Future<bool> changePassword(String oldPassword, String newPassword) async {
    try {
      final result = await dio.put<dynamic>(
        '/user/change-password',
        data: {'oldPassword': oldPassword, 'newPassword': newPassword},
      );

      if (result.statusCode == 200) {
        return true;
      }
      return false;
    } catch (e) {
      // if (kDebugMode) {
      //   print(e);
      // }
      return false;
    }
  }
}
