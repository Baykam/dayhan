import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/domain/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';

import 'package:http/http.dart' as http;

final class PostToken implements IPostToken {
  @override
  Future<Either<Error, Token>> postToken({required Verifykey key}) async {
    final url = '${Api.localHost.url}/auth/token/';
    final header = {'user_id': key.user_id ?? ''};
    final body = {'verify_key': key.verify_key ?? ''};
    final res = await http.post(
      Uri.parse(url),
      body: jsonEncode(body),
      headers: header,
    );
    final p = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>;
    if (res.statusCode == 201) {
      final r = Token.fromJson(p);
      return right(r);
    } else {
      final l = Error.fromJson(p);
      return left(l);
    }
  }
}
