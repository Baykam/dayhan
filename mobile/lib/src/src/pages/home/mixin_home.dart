part of 'home.dart';

mixin MixinHomePage on State<HomePage> {
  @override
  void initState() {
    super.initState();
    context.read<GetProductListBloc>().add(const GetProductListEvent.started());
  }

  Future<dynamic> showProductbyId(BuildContext context);
  Future<bool?> showConfirmDismiss(BuildContext context);
  Future<dynamic> showUpdateProduct(BuildContext context);

  void goAddProduct() => context.pushNamed(RoutePath.addProduct.name);

  void onTapProduct({required Product product}) {
    context
        .read<GetProductByIdBloc>()
        .add(GetProductByIdEvent.byId(id: product.id ?? 0));
    showProductbyId(context);
  }

  Future<bool?> conFirmDismiss(
    DismissDirection direction,
    Product product,
  ) async {
    if (direction == DismissDirection.startToEnd) {
      context
          .read<DeleteProductBloc>()
          .add(DeleteProductEvent.delete(productId: product.id ?? 0));
      return showConfirmDismiss(context);
    }
    return null;
  }

  void updateButton(Product product) {
    context
        .read<PostProductBloc>()
        .add(PostProductEvent.update(product: product));
    showUpdateProduct(context);
  }
}
