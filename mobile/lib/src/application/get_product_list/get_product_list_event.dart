part of 'get_product_list_bloc.dart';

@freezed
class GetProductListEvent with _$GetProductListEvent {
  const factory GetProductListEvent.started() = _Started;
  const factory GetProductListEvent.search() = _Search;
}
