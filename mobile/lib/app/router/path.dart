/// route navigator enum
enum RoutePath {
  /// [/]
  navbar(path: '/'),

  /// [auth]
  auth(path: '/auth'),

  ///[otp]
  otp(path: 'otp'),

  ///
  addProduct(path: 'add_product');

  final String path;

  const RoutePath({required this.path});
}
