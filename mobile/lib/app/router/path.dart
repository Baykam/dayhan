/// route navigator enum
enum RoutePath {
  /// [/]
  navbar(path: '/'),

  /// [auth]
  auth(path: '/auth'),

  ///[otp]
  otp(path: 'otp');

  final String path;

  const RoutePath({required this.path});
}
