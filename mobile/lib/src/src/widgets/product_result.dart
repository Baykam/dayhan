import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:flutter/material.dart';

final class ProductListResult extends StatelessWidget {
  const ProductListResult(
      {super.key, required this.product, required this.ontap, this.trailing});
  final Product product;
  final void Function() ontap;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      title: Text('product id : ${product.id}'),
      subtitle: Text('product price : ${product.price}'),
      trailing: trailing,
    );
  }
}
