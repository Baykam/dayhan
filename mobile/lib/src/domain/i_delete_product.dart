import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';

abstract class IDeleteProduct {
  Future<Either<Error, String?>> deleteProduct({required int id});
}
