import 'package:freezed_annotation/freezed_annotation.dart';

part 'document.freezed.dart';
part 'document.g.dart';

@freezed
class Document with _$Document {
  factory Document({
    required String id,
    required String title,
    required String data,
    required String createdAt,
  }) = _Document;

  factory Document.fromJson(Map<String, dynamic> json) =>
      _$DocumentFromJson(json);
}
