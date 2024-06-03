import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/infrastructure/model/index.dart';

abstract class IGetProductById {
  Future<Either<Error, Product>> getProductById(
    int productId,
    int limit,
    int page,
  );
}
