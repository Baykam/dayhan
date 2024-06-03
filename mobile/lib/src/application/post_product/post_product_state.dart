part of 'post_product_bloc.dart';

@freezed
class PostProductState with _$PostProductState {
  const factory PostProductState.initial() = _Initial;
  const factory PostProductState.loading() = _Loading;
  const factory PostProductState.failed({required String m}) = _Failed;
  const factory PostProductState.success({required Product product}) = _Success;
}
