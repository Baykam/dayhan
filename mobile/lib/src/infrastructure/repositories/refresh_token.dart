import 'dart:convert';

import 'package:dayhan_mobile/app/router/go.dart';
import 'package:dayhan_mobile/app/router/path.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;

final class RefreshToken {
  Future<void> refreshToken({required String token}) async {
    final r = await CacheManager.shared.getString(CachePaths.refreshKey.path);
    final uri = '${Api.localHost.url}/auth/refresh_token/';

    final header = {'Authorization': token};
    final body = {'refresh_token': r ?? ''};
    final res = await http.post(
      Uri.parse(uri),
      body: jsonEncode(body),
      headers: header,
    );
    if (res.statusCode == 201) {
      final rr = jsonDecode(res.body) as Map<String, dynamic>;
      final tt = Token.fromJson(rr);
      // await CacheManager.hive(CachePaths.accessKey.path).add<String>(
      //   cache: tt.access_token ?? '',
      //   key: CachePaths.accessKey.name,
      // );
      await CacheManager.shared
          .setString(CachePaths.accessKey.path, tt.access_token ?? '');
    } else {
      // await CacheManager.hive(CachePaths.accessKey.path).delete<String>(
      //   key: CachePaths.accessKey.name,
      // );
      // await CacheManager.hive(CachePaths.refreshKey.path).delete<String>(
      //   key: CachePaths.refreshKey.name,
      // );
      await CacheManager.shared.setString(CachePaths.accessKey.path, '');
      await CacheManager.shared.setString(CachePaths.refreshKey.path, '');
      ProductRouter().key.currentContext?.goNamed(RoutePath.auth.path);
    }
  }
}
