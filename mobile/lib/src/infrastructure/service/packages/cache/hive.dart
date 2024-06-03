part of 'cache_manager.dart';

/// Hive Packages functions
final class HiveClass {
  /// constructor this class
  const HiveClass({required this.boxPath});

  /// need the boxPath
  final String boxPath;

  ///key is [cache] data's String key
  Future<void> add<T>({
    required T cache,
    required dynamic key,
  }) async {
    final box = Hive.box<T>(boxPath);
    await box.put(key, cache);
  }

  /// get data just one [Object]
  T? get<T>({required dynamic key}) {
    final box = Hive.box<T>(boxPath);
    return box.get(key);
  }

  /// box get list
  List<T> getList<T>() {
    final box = Hive.box<T>(boxPath);
    return box.values.toList().cast<T>();
  }

  ///key is [cache] data's String id
  Future<void> delete<T>({
    required dynamic key,
  }) async {
    final box = Hive.box<T>(boxPath);
    await box.delete(key);
  }

  ///clear full box
  Future<void> clear<T>() async {
    final box = Hive.box<T>(boxPath);
    await box.clear();
  }

  ///key is [updatedCache] data's integer id
  Future<void> putAt<T>({
    required T updatedCache,
    required int key,
  }) async {
    final box = Hive.box<T>(boxPath);
    await box.putAt(key, updatedCache);
  }

  ///check data if inside list if list has data return [true] else [false]
  bool isContainsData<T>(T data) {
    try {
      final w = getList<T>();
      if (w.contains(data)) return true;
      return false;
    } catch (e) {
      return false;
    }
  }
}
