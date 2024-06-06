import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_req_event.dart';
part 'product_req_state.dart';
part 'product_req_bloc.freezed.dart';
///
final class ProductReqBloc extends Bloc<ProductReqEvent, ProductReqState> {
  ///
  ProductReqBloc() : super(const _Initial(product: Product())) {
    on<_Name>(_onName);
    on<_Description>(_onDescription);
    on<_Price>(_onPrice);
    on<_Images>(_onImages);
    on<_Videos>(_onVideos);
  }

  void _onName(_Name event, Emitter<ProductReqState> emit) {
    emit(
      state.copyWith(
        product: state.product.copyWith(
          name: event.name,
        ),
      ),
    );
  }

  void _onImages(_Images event, Emitter<ProductReqState> emit){
    emit(state.copyWith(
      product: state.product.copyWith(
        images: event.images,
      ),
     ),
    );
  }

  void _onVideos(_Videos event, Emitter<ProductReqState> emit){
    emit(state.copyWith(
      product: state.product.copyWith(
        videos: event.videos,
      ),
    ),
    );
  }

  void _onDescription(_Description event, Emitter<ProductReqState> emit) {
    emit(
      state.copyWith(
        product: state.product.copyWith(
          description: event.description,
        ),
      ),
    );
  }

  void _onPrice(_Price event, Emitter<ProductReqState> emit) {
    emit(
      state.copyWith(
        product: state.product.copyWith(
          price: event.price,
        ),
      ),
    );
  }
}
