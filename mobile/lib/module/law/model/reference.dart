import 'package:freezed_annotation/freezed_annotation.dart';

part 'reference.freezed.dart';
part 'reference.g.dart';

@freezed
class Reference with _$Reference {
  factory Reference({
    required String id,
    required int startIndex,
    required int endIndex,
    required String title,
    required String createdAt,
    String? documentId,
  }) = _Reference;

  factory Reference.fromJson(Map<String, dynamic> json) =>
      _$ReferenceFromJson(json);
}
