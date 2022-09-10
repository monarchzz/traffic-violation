import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException {
  factory NetworkException({String? message}) = _NetworkException;
}
