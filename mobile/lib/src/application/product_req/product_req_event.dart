part of 'product_req_bloc.dart';

@freezed
class ProductReqEvent with _$ProductReqEvent {
  const factory ProductReqEvent.name({required String name}) = _Name;
  const factory ProductReqEvent.description({required String description}) =
      _Description;
  const factory ProductReqEvent.price({required double price}) = _Price;
}
