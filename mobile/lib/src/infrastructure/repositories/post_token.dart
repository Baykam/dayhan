import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dayhan_mobile/src/domain/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';

import 'package:http/http.dart' as http;

final class PostToken implements IPostToken {
  @override
  Future<Either<Error, Token>> postToken({required Verifykey key}) async {
    final url = '${Api.localHost.url}auth/token';
    final header = {
      "Content-Type": "application/json",
    };
    final body = {
      'verify_key': key.verify_key ?? '',
      'sms': '123456',
      'user_id': key.user_id ?? '',
    };
    final res = await http.post(
      Uri.parse(url),
      body: jsonEncode(body),
      headers: header,
    );
    final p = jsonDecode(utf8.decode(res.bodyBytes)) as Map<String, dynamic>;
    if (res.statusCode == 201) {
      final r = Token.fromJson(p);
      // await CacheManager.hive(CachePaths.accessKey.path).add<String>(
      //   cache: r.access_token ?? '',
      //   key: CachePaths.accessKey.name,
      // );
      // await CacheManager.hive(CachePaths.refreshKey.path).add<String>(
      //   cache: r.refresh_token ?? '',
      //   key: CachePaths.refreshKey.name,
      // );
      await CacheManager.shared
          .setString(CachePaths.accessKey.path, r.access_token ?? '');
      await CacheManager.shared
          .setString(CachePaths.refreshKey.path, r.refresh_token ?? '');
      return right(r);
    } else {
      final l = Error.fromJson(p);
      return left(l);
    }
  }
}
