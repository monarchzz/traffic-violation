import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_item_violation_model.freezed.dart';
part 'search_item_violation_model.g.dart';

@freezed
class SearchItemViolationModel with _$SearchItemViolationModel {
  factory SearchItemViolationModel({
    required String id,
    required String title,
    required int viewCount,
    required int minPenalty,
    required int maxPenalty,
    required Vehicle affectedVehicle,
    required String createdAt,
    required List<String> images,
  }) = _SearchItemViolationModel;

  factory SearchItemViolationModel.fromJson(Map<String, dynamic> json) =>
      _$SearchItemViolationModelFromJson(json);
}
