import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';

import '../../domain/index.dart';

final class PostProduct implements IPostProduct {
  @override
  Future<Either<Error, Product>> createProduct({
    required Product product,
  }) async {
    const url = 'product';
    final res = await NetworkManager.i.post(
      url: url,
      body: product,
      returnFunc: () => createProduct(product: product),
    );

    final w = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>;
    if (res.statusCode == 201) {
      final r = Product.fromJson(w);
      return right(r);
    } else {
      final l = Error.fromJson(w);
      return left(l);
    }
  }

  @override
  Future<Either<Error, Product>> updateProduct(
      {required Product product}) async {
    final url = 'product/${product.id}';
    final res = await NetworkManager.i.post(
      url: url,
      body: product,
      returnFunc: () => updateProduct(product: product),
    );

    final w = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>;
    if (res.statusCode == 200) {
      final r = Product.fromJson(w);
      return right(r);
    } else {
      final l = Error.fromJson(w);
      return left(l);
    }
  }
}
