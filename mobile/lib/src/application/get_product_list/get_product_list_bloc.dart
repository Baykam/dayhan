import 'package:dayhan_mobile/src/domain/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/infrastructure/repositories/get_product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_product_list_event.dart';
part 'get_product_list_state.dart';
part 'get_product_list_bloc.freezed.dart';

final class GetProductListBloc
    extends Bloc<GetProductListEvent, GetProductListState> {
  GetProductListBloc()
      : _getProductList = GetProductList(),
        super(_Initial()) {
    on<_Started>(_onStarted);
    on<_Search>(_onSearch);
  }
  final IGetProductList _getProductList;
  final search = TextEditingController();

  Future<void> _onStarted(
      _Started event, Emitter<GetProductListState> emit) async {
    emit(const _Loading());

    try {
      final res = await _getProductList.getProductList();
      res.fold(
        (l) => emit(_Failed(m: l.error ?? '')),
        (r) => emit(_Success(p: r)),
      );
    } catch (e) {
      emit(_Failed(m: e.toString()));
    }
  }

  Future<void> _onSearch(
      _Search event, Emitter<GetProductListState> emit) async {
    emit(const _Loading());

    try {
      final res = await _getProductList.getProductList(query: search.text);
      res.fold(
        (l) => emit(_Failed(m: l.error ?? '')),
        (r) => emit(_Success(p: r)),
      );
    } catch (e) {
      emit(_Failed(m: e.toString()));
    }
  }
}
