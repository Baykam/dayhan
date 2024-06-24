part of 'cache_bloc.dart';

@freezed
class CacheState with _$CacheState {
  const factory CacheState.initial({required List<Product> products}) =
      _Initial;
}
