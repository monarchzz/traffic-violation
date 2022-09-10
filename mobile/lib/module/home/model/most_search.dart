import 'package:freezed_annotation/freezed_annotation.dart';

part 'most_search.freezed.dart';
part 'most_search.g.dart';

@freezed
class MostSearch with _$MostSearch {
  factory MostSearch({
    required String id,
    required String title,
    required int viewCount,
  }) = _MostSearch;

  factory MostSearch.fromJson(Map<String, dynamic> json) =>
      _$MostSearchFromJson(json);
}
