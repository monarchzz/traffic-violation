import 'package:flutter_boilerplate/repository/violation_repository/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_violation_model.freezed.dart';
part 'search_violation_model.g.dart';

@freezed
class SearchViolationModel with _$SearchViolationModel {
  factory SearchViolationModel({
    required int total,
    required int pageIndex,
    required int pageSize,
    required List<SearchItemViolationModel> items,
  }) = _SearchViolationModel;

  factory SearchViolationModel.fromJson(Map<String, dynamic> json) =>
      _$SearchViolationModelFromJson(json);
}
