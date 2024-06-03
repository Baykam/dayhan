part of 'get_product_by_id_bloc.dart';

@freezed
class GetProductByIdEvent with _$GetProductByIdEvent {
  const factory GetProductByIdEvent.byId({required int id}) = _BYID;
}
