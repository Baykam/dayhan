/// Product Api controller
enum Api {
  /// local host port number [9999]
  localHost(url: 'http://127.0.0.3:9999/'),
  localHostWifi(url: 'http://192.168.1.184:9999/');

  /// enums url parameter
  final String url;

  const Api({required this.url});
}
