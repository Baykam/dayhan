import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/domain/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';

final class GetProductList implements IGetProductList {
  @override
  Future<Either<Error, List<Product>>> getProductList({String? query}) async {
    var url = '';
    if (query == null) {
      url = 'product';
    } else {
      url = 'product?search=$query';
    }
    final res = await NetworkManager.i.get(
      url: url,
      returnFunc: getProductList,
    );

    final p = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>;
    if (res.statusCode == 200) {
      final w = p['results'] as List<dynamic>;
      final r = w
          .map(
            (e) => Product.fromJson(e as Map<String, dynamic>),
          )
          .toList();
      return right(r);
    } else {
      final l = Error.fromJson(p);
      return left(l);
    }
  }
}
