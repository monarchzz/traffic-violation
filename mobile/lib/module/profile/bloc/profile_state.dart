part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.loadingAvatar() = _LoadingAvatar;
  const factory ProfileState.unauthorized() = _Unauthorized;
  const factory ProfileState.success({
    required Profile profile,
    required List<Violation> violations,
  }) = _Success;
  const factory ProfileState.failure() = _Failure;
}
