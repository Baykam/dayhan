part of 'cache.dart';

mixin MixinCachePage on State<CachePage> {
  Future<bool?> isAcceptedDelete(BuildContext context);

  Future<bool?> deleteProduct(
    DismissDirection direction,
  ) async {
    if (direction == DismissDirection.startToEnd) {
      return isAcceptedDelete(context);
    }
    return null;
  }

  void deleteFunc(DismissDirection direction, Product p) {
    context.read<CacheBloc>().add(CacheEvent.remove(product: p));
  }
}
