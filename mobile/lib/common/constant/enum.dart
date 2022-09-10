import 'package:freezed_annotation/freezed_annotation.dart';

enum Vehicle {
  @JsonValue('BIKE')
  bike,
  @JsonValue('CAR')
  car,
  @JsonValue('BOTH')
  both
}

extension ListX on Vehicle {
  List<String> toList() {
    final list = <String>[];

    if (this == Vehicle.bike) {
      list.add('Xe máy');
    } else if (this == Vehicle.car) {
      list.add('Xe ô tô');
    } else {
      list.addAll(['Xe máy', 'Xe ô tô']);
    }

    return list;
  }

  String toEnumName() {
    if (this == Vehicle.bike) {
      return 'BIKE';
    } else if (this == Vehicle.car) {
      return 'CAR';
    } else {
      return 'BOTH';
    }
  }
}
