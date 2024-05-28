import 'dart:convert';

import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:http/http.dart' as http;

/// product network manage in this class
final class NetworkManager {
  NetworkManager._();

  /// this [i] is get classes internal func
  static final NetworkManager i = NetworkManager._();

  /// get function with http package
  Future<http.Response> get({
    required String url,
    Function? returnFunc,
    bool? needHeader,
    bool? baseUrl,
  }) async {
    final token = await CacheManager.shared.getString('key');
    final headers = {
      'Authorization': token ?? '',
    };

    var uri = '';

    if (baseUrl ?? false) {
      uri = '${Api.localHost.url}auth/$url';
    } else {
      uri = '${Api.localHost.url}api/v1/$url';
    }

    final res = await http.get(
      Uri.parse(uri),
      headers: needHeader ?? false ? headers : null,
    );
    if (res.statusCode == 401) {
      returnFunc?.call();
    }

    return res;
  }

  /// post function with http package
  Future<http.Response> post({
    required String url,
    Function? returnFunc,
    Object? body,
    bool? needHeader,
    bool? baseUrl,
  }) async {
    final token = await CacheManager.shared.getString('key');
    final headers = {
      'Authorization': token ?? '',
    };

    var uri = '';

    if (baseUrl ?? false) {
      uri = '${Api.localHost.url}$url';
    } else {
      uri = '${Api.localHost.url}api/v1/$url';
    }

    final res = await http.post(
      Uri.parse(uri),
      body: jsonEncode(body),
      headers: needHeader ?? false ? headers : null,
    );
    if (res.statusCode == 401) {
      returnFunc?.call();
    }

    return res;
  }

  /// put function with http package
  Future<http.Response> put({
    required String url,
    Function? returnFunc,
    Object? body,
    bool? needHeader,
    bool? baseUrl,
  }) async {
    final token = await CacheManager.shared.getString('key');
    final headers = {
      'Authorization': token ?? '',
    };

    var uri = '';

    if (baseUrl ?? false) {
      uri = '${Api.localHost.url}$url';
    } else {
      uri = '${Api.localHost.url}api/v1/$url';
    }

    final res = await http.put(
      Uri.parse(uri),
      body: jsonEncode(body),
      headers: needHeader ?? false ? headers : null,
    );
    if (res.statusCode == 401) {
      returnFunc?.call();
    }

    return res;
  }
}
