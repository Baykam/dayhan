import 'dart:convert';

import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:http/http.dart' as http;

final class RefreshToken {
  Future<void> refreshToken({required String token}) async {
    final r = await CacheManager.shared.getString(CachePaths.refreshKey.path);
    final uri = '${Api.localHost.url}/auth/refresh/';

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
      await CacheManager.shared
          .setString(CachePaths.accessKey.path, tt.access_token ?? '');
    } else {
      await CacheManager.shared.setString(CachePaths.accessKey.path, '');
    }
  }
}
