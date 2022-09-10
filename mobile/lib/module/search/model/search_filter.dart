import 'package:flutter_boilerplate/common/constant/constant.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_filter.freezed.dart';

enum FilterType { penalty, vehicle }

@freezed
class SearchFilter with _$SearchFilter {
  factory SearchFilter({
    required String text,
    required FilterType filterType,
    Vehicle? affectedVehicle,
    int? minPenalty,
    int? maxPenalty,
    bool? isAllPenalty,
  }) = _SearchFilter;
}
