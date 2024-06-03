import 'package:dayhan_mobile/src/domain/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_product_by_id_event.dart';
part 'get_product_by_id_state.dart';
part 'get_product_by_id_bloc.freezed.dart';

final class GetProductByIdBloc
    extends Bloc<GetProductByIdEvent, GetProductByIdState> {
  GetProductByIdBloc()
      : _byId = GetProductById(),
        super(_Initial()) {
    on<_BYID>(_onBYID);
  }

  final IGetProductById _byId;
  Future<void> _onBYID(_BYID event, Emitter<GetProductByIdState> emit) async {
    emit(const _Loading());
    try {
      final res = await _byId.getProductById(event.id, 0, 0);
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
