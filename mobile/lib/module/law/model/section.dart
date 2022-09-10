import 'package:flutter_boilerplate/module/law/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'section.freezed.dart';
part 'section.g.dart';

enum SectionType {
  @JsonValue('ACTION')
  action,
  @JsonValue('PENALTY')
  penalty,
  @JsonValue('EXTRA')
  extra,
  @JsonValue('EXCEPT')
  except,
  @JsonValue('NOTE')
  note,
  @JsonValue('RELATED')
  related,
}
//   ACTION // hành vi
//   PENALTY // phạt
//   EXTRA // phạt bổ sung
//   EXCEPT // trường hợp loại trừ
//   NOTE // ghi chú
//   RELATED

@freezed
class Section with _$Section {
  factory Section({
    required String id,
    required SectionType type,
    required String data,
    String? penalty,
    required String createdAt,
    Reference? reference,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}

extension StringX on SectionType {
  String toName() {
    switch (this) {
      case SectionType.action:
        return 'HÀNH VI';
      case SectionType.penalty:
        return 'HÀNH VI';
      case SectionType.extra:
        return 'HÌNH THỨC PHẠT BỔ SUNG';
      case SectionType.except:
        return 'TRƯỜNG HỢP LOẠI TRỪ';
      case SectionType.note:
        return 'GHI CHÚ';
      case SectionType.related:
        return 'HÀNH VI LIÊN QUAN';
    }
  }
}
