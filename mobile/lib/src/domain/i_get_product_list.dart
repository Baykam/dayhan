import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';

abstract class IGetProductList {
  Future<Either<Error, List<Product>>> getProductList({String? query});
}
