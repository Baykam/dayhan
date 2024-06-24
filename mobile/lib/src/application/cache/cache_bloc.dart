import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'cache_event.dart';
part 'cache_state.dart';
part 'cache_bloc.freezed.dart';

final class CacheBloc extends Bloc<CacheEvent, CacheState> {
  CacheBloc() : super(const _Initial(products: [])) {
    on<_Add>(_onAdd);
    on<_Remove>(_onRemove);
    on<_GetList>(_onGetList);
  }

  Future<void> _onAdd(_Add event, Emitter<CacheState> emit) async {
    final box = Hive.box<Product>(CachePaths.productCache.path);
    await box.put(event.product.id, event.product);
    final list = box.values.cast<Product>().toList();
    emit(state.copyWith(products: list));
  }

  Future<void> _onRemove(_Remove event, Emitter<CacheState> emit) async {
    final box = Hive.box<Product>(CachePaths.productCache.path);
    await box.delete(event.product.id);
    final list = box.values.cast<Product>().toList();
    emit(state.copyWith(products: list));
  }

  void _onGetList(_GetList event, Emitter<CacheState> emit) {
    final box = Hive.box<Product>(CachePaths.productCache.path);
    final listData = box.values.cast<Product>().toList();
    emit(state.copyWith(products: listData));
  }
}
