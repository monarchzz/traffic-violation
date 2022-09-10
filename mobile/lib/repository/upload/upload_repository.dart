import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';

class UploadRepository {
  const UploadRepository({required this.dio});

  final Dio dio;

  Future<String> uploadAvatar(PlatformFile platformFile) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(platformFile.path!),
    });
    final response = await dio.post('/upload/image', data: formData);
    // ignore: avoid_dynamic_calls
    final url = response.data['url'] as String;

    return url;
  }
}
