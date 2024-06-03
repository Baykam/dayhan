// ignore: avoid_web_libraries_in_flutter
// import 'dart:html';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared.dart';
part 'hive.dart';
// part 'window_storage.dart';

/// Cache Manager project
final class CacheManager {
  CacheManager._();

  /// internal function this class
  CacheManager get i => CacheManager._();

  /// get hive package functions
  static HiveClass hive(String boxPath) => HiveClass(boxPath: boxPath);

  /// get shared preferences package functions
  static SharedClass get shared => SharedClass();

  // /// get [window.localStorage] use for web storage
  // static WebDataStorage get windowStorage => WebDataStorage();
}
