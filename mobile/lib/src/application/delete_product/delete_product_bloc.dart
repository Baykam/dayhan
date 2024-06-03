import 'package:dayhan_mobile/src/domain/i_delete_product.dart';
import 'package:dayhan_mobile/src/infrastructure/repositories/delete_product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_product_event.dart';
part 'delete_product_state.dart';
part 'delete_product_bloc.freezed.dart';

final class DeleteProductBloc
    extends Bloc<DeleteProductEvent, DeleteProductState> {
  /// delete bloc's constructor
  DeleteProductBloc()
      : _deleteProduct = DeleteProduct(),
        super(const _Initial()) {
    on<_Delete>(_onDelete);
  }

  final IDeleteProduct _deleteProduct;

  Future<void> _onDelete(
      _Delete event, Emitter<DeleteProductState> emit) async {
    emit(const _Loading());
    try {
      final res = await _deleteProduct.deleteProduct(id: event.productId);
      res.fold(
        (l) => emit(_Failed(m: l.error ?? '')),
        (r) => emit(
          _Succes(m: r ?? ''),
        ),
      );
    } catch (e) {
      emit(_Failed(m: e.toString()));
    }
  }
}
