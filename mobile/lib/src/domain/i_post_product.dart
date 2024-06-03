import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';

abstract class IPostProduct {
  Future<Either<Error, Product>> createProduct({required Product product});
  Future<Either<Error, Product>> updateProduct({required Product product});
}
