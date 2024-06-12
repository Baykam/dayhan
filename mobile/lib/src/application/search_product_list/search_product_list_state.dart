part of 'search_product_list_bloc.dart';

@freezed
class SearchProductListState with _$SearchProductListState {
  const factory SearchProductListState.initial() = _Initial;
  const factory SearchProductListState.loading() = _Loading;
  const factory SearchProductListState.failed({required String m}) = _Failed;
  const factory SearchProductListState.success(
      {required List<Product> products}) = _Success;
}
