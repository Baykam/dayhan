part of 'product_req_bloc.dart';

@freezed
class ProductReqEvent with _$ProductReqEvent {
  const factory ProductReqEvent.name({required String name}) = _Name;
  const factory ProductReqEvent.description({required String description}) =
      _Description;
  const factory ProductReqEvent.price({required double price}) = _Price;
  const factory ProductReqEvent.images({required List<FileSend> images}) = _Images;
  const factory ProductReqEvent.videos({required List<FileSend> videos}) = _Videos;
  const factory ProductReqEvent.id({required int id}) = _ID;
  const factory ProductReqEvent.title({required String title}) = _Title;
  const factory ProductReqEvent.categoryId({required int categoryId}) = _CategoryId;
  const factory ProductReqEvent.orderQuantity({required int order}) = _OrderQuantity;
  const factory ProductReqEvent.rate({required double rate}) = _Rate;
}
