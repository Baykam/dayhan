part of 'add_product.dart';

mixin MixinAddProduct on State<AddProduct> {
  final price = TextEditingController();
  final description = TextEditingController();
  final name = TextEditingController();

  Future<dynamic> showCreateproduct(BuildContext context);

  void addProduct(Product product) {
    context.read<PostProductBloc>().add(
          PostProductEvent.create(product: product),
        );
    showCreateproduct(context);
  }
}
