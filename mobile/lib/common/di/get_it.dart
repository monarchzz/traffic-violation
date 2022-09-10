import 'package:dio/dio.dart';
import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/common/helper/dio_helper.dart';
import 'package:flutter_boilerplate/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter_boilerplate/repository/comment_repository/comment_repository.dart';
import 'package:flutter_boilerplate/repository/log_repository/log_repository.dart';
import 'package:flutter_boilerplate/repository/upload/upload_repository.dart';
import 'package:flutter_boilerplate/repository/violation_repository/violation_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> configureDependencies() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  final options = BaseOptions(
    baseUrl: NetworkConfig.baseUrl,
    connectTimeout: NetworkConfig.connectTimeout,
    receiveTimeout: NetworkConfig.receiveTimeout,
  );
  final dio = Dio(options);
  final helper = DioHelper(
    dio: dio,
    sharedPreferences: sharedPreferences,
  );
  await helper.initApiClient();

  final authenticationRepository = AuthenticationRepository(
    dio: dio,
    sharedPreferences: sharedPreferences,
  );

  getIt
    ..registerSingleton<SharedPreferences>(sharedPreferences)
    ..registerSingleton<Dio>(dio)
    ..registerSingleton<AuthenticationRepository>(authenticationRepository)
    ..registerSingleton<ViolationRepository>(
      ViolationRepository(
        dio: dio,
        authenticationRepository: getIt.get<AuthenticationRepository>(),
      ),
    )
    ..registerSingleton<UploadRepository>(UploadRepository(dio: dio))
    ..registerSingleton(
      LogRepository(
        authenticationRepository: authenticationRepository,
        dio: dio,
        sharedPreferences: sharedPreferences,
      ),
    )
    ..registerSingleton(
      CommentRepository(
        dio: dio,
      ),
    );

  await authenticationRepository.init();
}
