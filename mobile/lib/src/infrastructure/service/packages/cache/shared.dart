part of 'cache_manager.dart';

/// Shared Preferences package functions
final class SharedClass {
  /// get String data from db with [key] [value]
  Future<String?> getString(String key) async {
    final s = await SharedPreferences.getInstance();
    return s.getString(key);
  }

  /// set String data
  Future<bool> setString(String key, String data) async {
    final s = await SharedPreferences.getInstance();
    return s.setString(key, data);
  }

  /// Remove Data
  Future<bool> remove(String key) async {
    final s = await SharedPreferences.getInstance();
    return s.remove(key);
  }
}
