part of 'product_req_bloc.dart';

@freezed
class ProductReqState with _$ProductReqState {
  const factory ProductReqState.initial({required Product product}) = _Initial;
}
