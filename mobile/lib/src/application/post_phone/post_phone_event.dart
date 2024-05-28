part of 'post_phone_bloc.dart';

@freezed
class PostPhoneEvent with _$PostPhoneEvent {
  const factory PostPhoneEvent.phoneSend({required String phone}) = _PhoneSend;
}
