part of 'cache_bloc.dart';

@freezed
class CacheEvent with _$CacheEvent {
  const factory CacheEvent.add({required Product product}) = _Add;
  const factory CacheEvent.remove({required Product product}) = _Remove;
  const factory CacheEvent.getList() = _GetList;
}
