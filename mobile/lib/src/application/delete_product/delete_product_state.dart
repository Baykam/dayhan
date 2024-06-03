part of 'delete_product_bloc.dart';

@freezed
class DeleteProductState with _$DeleteProductState {
  const factory DeleteProductState.initial() = _Initial;
  const factory DeleteProductState.loading() = _Loading;
  const factory DeleteProductState.failed({required String m}) = _Failed;
  const factory DeleteProductState.success({required String m}) = _Succes;
}
