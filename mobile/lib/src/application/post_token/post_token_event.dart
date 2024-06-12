part of 'post_token_bloc.dart';

@freezed
class PostTokenEvent with _$PostTokenEvent {
  const factory PostTokenEvent.postKey(
      {required Verifykey key, required String otpCode}) = _PostKey;
}
