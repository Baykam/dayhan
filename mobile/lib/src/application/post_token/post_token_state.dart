part of 'post_token_bloc.dart';

@freezed
class PostTokenState with _$PostTokenState {
  const factory PostTokenState.initial() = _Initial;
  const factory PostTokenState.loading() = _Loading;
  const factory PostTokenState.failed({required String m}) = _Failed;
  const factory PostTokenState.success({required Token token}) = _Success;
}
