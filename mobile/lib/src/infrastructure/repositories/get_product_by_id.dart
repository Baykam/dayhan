import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';

import '../../domain/index.dart';


final class GetProductById implements IGetProductById{
  @override
  Future<Either<Error, Product>> getProductById(int productId, int limit, int page) async {
    final url = 'product/$productId?limit=$limit&page=$page';
    final res = await NetworkManager.i.get(url: url,
    returnFunc: ()=> getProductById(productId, limit, page),
    );
    final w = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>?;
    if(res.statusCode == 200){
      final r = Product.fromJson(w ?? {});
      return right(r);
    }else{
      final l = Error.fromJson(w ?? {});
      return left(l);
    }
  }

}