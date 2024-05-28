/// Product Api controller
enum Api {
  /// local host port number [9999]
  localHost(url: 'http://localhost:9999');

  /// enums url parameter
  final String url;

  const Api({required this.url});
}
