part of 'get_product_by_id_bloc.dart';

@freezed
class GetProductByIdState with _$GetProductByIdState {
  const factory GetProductByIdState.initial() = _Initial;
  const factory GetProductByIdState.loading() = _Loading;
  const factory GetProductByIdState.failed({required String m}) = _Failed;
  const factory GetProductByIdState.success({required Product product}) =
      _Success;
}
