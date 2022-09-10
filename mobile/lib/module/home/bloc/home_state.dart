part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _InitialState;

  const factory HomeState.loading() = _LoadingState;

  const factory HomeState.success({
    required List<MostSearch> mostSearch,
    required String avatar,
  }) = _SuccessState;

  const factory HomeState.failure({String? message}) = _FailureState;
}
