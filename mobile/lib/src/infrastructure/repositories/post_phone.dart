import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/domain/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';

final class PostPhone implements IPostPhone {
  @override
  Future<Either<Error, Verifykey>> postPhone({required String phone}) async {
    const url = 'auth';

    final res = await NetworkManager.i.post(url: url, body: {'phone': phone});
    final w = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>;
    if (res.statusCode == 201) {
      final r = Verifykey.fromJson(w);
      return right(r);
    } else {
      final l = Error.fromJson(w);
      return left(l);
    }
  }
}
