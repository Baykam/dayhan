part of 'post_product_bloc.dart';

@freezed
class PostProductEvent with _$PostProductEvent {
  const factory PostProductEvent.create({required Product product}) = _Create;
  const factory PostProductEvent.update({required Product product}) = _Update;
}
