import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'violation.freezed.dart';
part 'violation.g.dart';

@freezed
class Violation with _$Violation {
  factory Violation({
    required String id,
    required String title,
    required Vehicle affectedVehicle,
    required int minPenalty,
    required int maxPenalty,
    required List<String> images,
  }) = _Violation;

  factory Violation.fromJson(Map<String, dynamic> json) =>
      _$ViolationFromJson(json);
}

extension StringX on Violation {
  String toPenaltyString() {
    return '${minPenalty.convertNum()} - ${maxPenalty.convertNum()}';
  }
}

extension IntX on int {
  String convertNum() {
    if (this >= 1000) {
      return '${this ~/ 1000}k';
    } else {
      return '$this';
    }
  }
}
