import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';

abstract class IPostToken {
  Future<Either<Error, Token>> postToken({required Verifykey key});
}
