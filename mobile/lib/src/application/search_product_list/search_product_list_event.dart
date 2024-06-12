part of 'search_product_list_bloc.dart';

@freezed
class SearchProductListEvent with _$SearchProductListEvent {
  const factory SearchProductListEvent.search({required String query}) =
      _Search;
}
