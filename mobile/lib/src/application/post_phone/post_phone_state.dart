part of 'post_phone_bloc.dart';

@freezed
class PostPhoneState with _$PostPhoneState {
  const factory PostPhoneState.initial() = _Initial;
  const factory PostPhoneState.loading() = _Loading;
  const factory PostPhoneState.failed({required String m}) = _Failed;
  const factory PostPhoneState.success({required Verifykey key}) = _Success;
}
