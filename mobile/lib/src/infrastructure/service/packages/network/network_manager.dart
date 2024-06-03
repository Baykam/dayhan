// ignore_for_file: inference_failure_on_function_return_type

import 'dart:convert';

import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:http/http.dart' as http;

/// product network manage in this class
final class NetworkManager {
  NetworkManager._();

  /// this [i] is get classes internal func
  static final NetworkManager i = NetworkManager._();

  /// get function with http package
  Future<http.Response> get({
    required String url,
    Function()? returnFunc,
  }) async {
    final token =
        await CacheManager.shared.getString(CachePaths.accessKey.path);
    final headers = {
      'Authorization': token ?? '',
      "Content-Type": "application/json",
    };

    final uri = '${Api.localHost.url}api/v1/$url';

    final res = await http.get(
      Uri.parse(uri),
      headers: headers,
    );
    if (res.statusCode == 401) {
      await RefreshToken().refreshToken(token: token ?? '');
      returnFunc?.call();
    }

    return res;
  }

  /// post function with http package
  Future<http.Response> post({
    required String url,
    Function()? returnFunc,
    Object? body,
  }) async {
    final token =
        await CacheManager.shared.getString(CachePaths.accessKey.path);
    final headers = {
      'Authorization': token ?? '',
      "Content-Type": "application/json",
    };

    final uri = '${Api.localHost.url}api/v1/$url';

    final res = await http.post(
      Uri.parse(uri),
      body: jsonEncode(body),
      headers: headers,
    );
    if (res.statusCode == 401) {
      await RefreshToken().refreshToken(token: token ?? '');
      returnFunc?.call();
    }

    return res;
  }

  /// put function with http package
  Future<http.Response> put({
    required String url,
    Function()? returnFunc,
    Object? body,
    bool? needHeader,
    bool? baseUrl,
  }) async {
    final token =
        await CacheManager.shared.getString(CachePaths.accessKey.path);
    final headers = {
      'Authorization': token ?? '',
      "Content-Type": "application/json",
    };

    final uri = '${Api.localHost.url}api/v1/$url';

    final res = await http.put(
      Uri.parse(uri),
      body: jsonEncode(body),
      headers: headers,
    );
    if (res.statusCode == 401) {
      await RefreshToken().refreshToken(token: token ?? '');
      returnFunc?.call();
    }

    return res;
  }

  /// delete function with http package
  Future<http.Response> delete({
    required String url,
    Function()? returnFunc,
  }) async {
    final token =
        await CacheManager.shared.getString(CachePaths.accessKey.path);
    final headers = {
      'Authorization': token ?? '',
      "Content-Type": "application/json",
    };

    final uri = '${Api.localHost.url}api/v1/$url';

    final res = await http.delete(
      Uri.parse(uri),
      headers: headers,
    );
    if (res.statusCode == 401) {
      await RefreshToken().refreshToken(token: token ?? '');
      returnFunc?.call();
    }

    return res;
  }
}
