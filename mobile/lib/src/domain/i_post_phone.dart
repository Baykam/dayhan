import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/infrastructure/model/index.dart';

abstract class IPostPhone {
  Future<Either<Error, Verifykey>> postPhone({required String phone});
}
