import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared.dart';
part 'hive.dart';

/// Cache Manager project
final class CacheManager {
  CacheManager._(this.hiveBoxPath);

  /// internal function this class
  CacheManager get i => CacheManager._(hiveBoxPath);

  /// just use hive package need box path
  final String hiveBoxPath;

  /// get hive package functions
  HiveClass get hive => HiveClass(boxPath: hiveBoxPath);

  /// get shared preferences package functions
  static SharedClass get shared => SharedClass();
}
