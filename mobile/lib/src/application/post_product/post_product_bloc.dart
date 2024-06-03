import 'package:bloc/bloc.dart';
import 'package:dayhan_mobile/src/domain/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/infrastructure/repositories/post_product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_product_event.dart';
part 'post_product_state.dart';
part 'post_product_bloc.freezed.dart';

class PostProductBloc extends Bloc<PostProductEvent, PostProductState> {
  PostProductBloc()
      : _postProduct = PostProduct(),
        super(const _Initial()) {
    on<_Create>(_onCreate);
    on<_Update>(_onUpdate);
  }

  final IPostProduct _postProduct;

  Future<void> _onCreate(_Create event, Emitter<PostProductState> emit) async {
    emit(const _Loading());

    try {
      final res = await _postProduct.createProduct(product: event.product);
      res.fold(
        (l) => emit(_Failed(m: l.error ?? '')),
        (r) => emit(
          _Success(product: r),
        ),
      );
    } catch (e) {
      emit(_Failed(m: e.toString()));
    }
  }

  Future<void> _onUpdate(_Update event, Emitter<PostProductState> emit) async {
    emit(const _Loading());

    try {
      final res = await _postProduct.updateProduct(product: event.product);
      res.fold(
        (l) => emit(_Failed(m: l.error ?? '')),
        (r) => emit(
          _Success(product: r),
        ),
      );
    } catch (e) {
      emit(_Failed(m: e.toString()));
    }
  }
}
