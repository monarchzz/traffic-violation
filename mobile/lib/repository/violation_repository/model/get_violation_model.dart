import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/repository/violation_repository/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_violation_model.freezed.dart';
part 'get_violation_model.g.dart';

@freezed
class GetViolationModel with _$GetViolationModel {
  factory GetViolationModel({
    required String id,
    required String title,
    required int viewCount,
    required int minPenalty,
    required int maxPenalty,
    required Vehicle affectedVehicle,
    required String createdAt,
    required List<SectionModel> sections,
    required List<String> images,
  }) = _GetViolationModel;

  factory GetViolationModel.fromJson(Map<String, dynamic> json) =>
      _$GetViolationModelFromJson(json);
}
