import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/domain/i_delete_product.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';

final class DeleteProduct implements IDeleteProduct {
  @override
  Future<Either<Error, String?>> deleteProduct({required int id}) async {
    final url = 'product/$id';

    final res = await NetworkManager.i.delete(
      url: url,
      returnFunc: () => deleteProduct(id: id),
    );
    final w = jsonDecode(utf8.decode(res.bodyBytes));
    if (res.statusCode == 200) {
      final r = w as String?;
      return right(r);
    } else {
      final o = w as Map<String, dynamic>;
      final l = Error.fromJson(o);
      return left(l);
    }
  }
}
