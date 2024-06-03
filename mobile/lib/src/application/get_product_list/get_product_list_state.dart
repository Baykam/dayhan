part of 'get_product_list_bloc.dart';

@freezed
class GetProductListState with _$GetProductListState {
  const factory GetProductListState.initial() = _Initial;
  const factory GetProductListState.loading() = _Loading;
  const factory GetProductListState.failed({required String m}) = _Failed;
  const factory GetProductListState.success({required List<Product> p}) =
      _Success;
}
