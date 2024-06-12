import 'package:bloc/bloc.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/infrastructure/repositories/get_product_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_product_list_event.dart';
part 'search_product_list_state.dart';
part 'search_product_list_bloc.freezed.dart';

final class SearchProductListBloc
    extends Bloc<SearchProductListEvent, SearchProductListState> {
  SearchProductListBloc()
      : _getProductList = GetProductList(),
        super(_Initial()) {
    on<_Search>(_onSearch);
  }

  final GetProductList _getProductList;

  Future<void> _onSearch(
      _Search event, Emitter<SearchProductListState> emit) async {
    emit(const _Loading());

    try {
      final res = await _getProductList.getProductList(query: event.query);
      res.fold(
        (l) => emit(_Failed(m: l.error ?? '')),
        (r) => emit(_Success(products: r)),
      );
    } catch (e) {
      emit(_Failed(m: e.toString()));
    }
  }
}
