import 'package:freezed_annotation/freezed_annotation.dart';

part 'reference_model.freezed.dart';
part 'reference_model.g.dart';

@freezed
class ReferenceModel with _$ReferenceModel {
  factory ReferenceModel({
    required String id,
    required String title,
    required int startIndex,
    required int endIndex,
    required String createdAt,
    String? documentId,
  }) = _ReferenceModel;

  factory ReferenceModel.fromJson(Map<String, dynamic> json) =>
      _$ReferenceModelFromJson(json);
}
