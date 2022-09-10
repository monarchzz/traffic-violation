import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

enum Gender {
  @JsonValue('MALE')
  male,
  @JsonValue('FEMALE')
  female,
}

@freezed
class Profile with _$Profile {
  factory Profile({
    required String id,
    required String email,
    required String name,
    required String avatar,
    required String phone,
    DateTime? birthday,
    Gender? gender,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

extension GenderX on Gender {
  String toName() {
    switch (this) {
      case Gender.female:
        return 'Nữ';
      case Gender.male:
        return 'Nam';
    }
  }
}
