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
  }) async {
    // final headers = {
    //   "Authorization":
    // }
    final res = await http.get(
      Uri.parse(url),
      headers: needHeader ?? false ? {} : null,
    );
    if (res.statusCode == 401) {
      returnFunc?.call();
    }

    return res;
  }
}
