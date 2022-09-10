import 'package:flutter_boilerplate/module/law/model/model.dart';
import 'package:flutter_boilerplate/repository/violation_repository/model/reference_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_model.freezed.dart';
part 'section_model.g.dart';

@freezed
class SectionModel with _$SectionModel {
  factory SectionModel({
    required String id,
    required SectionType type,
    required String data,
    String? penalty,
    required String createdAt,
    ReferenceModel? reference,
  }) = _SectionModel;

  factory SectionModel.fromJson(Map<String, dynamic> json) =>
      _$SectionModelFromJson(json);
}
