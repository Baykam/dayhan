part of 'delete_product_bloc.dart';

@freezed
class DeleteProductEvent with _$DeleteProductEvent {
  const factory DeleteProductEvent.delete({required int productId}) = _Delete;
}
