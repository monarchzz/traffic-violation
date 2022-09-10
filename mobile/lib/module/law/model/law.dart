import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:flutter_boilerplate/module/law/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'law.freezed.dart';
part 'law.g.dart';

@freezed
class Law with _$Law {
  factory Law({
    required String id,
    required String title,
    required int viewCount,
    required int minPenalty,
    required int maxPenalty,
    required String createdAt,
    required List<Section> sections,
    required Vehicle affectedVehicle,
    String? category,
    required List<String> images,
  }) = _Law;

  factory Law.fromJson(Map<String, dynamic> json) => _$LawFromJson(json);
}
