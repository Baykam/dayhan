import 'package:dayhan_mobile/src/domain/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';

final class Settings implements ISettings {
  @override
  Future<ThemeData> defaultData() async {
    final key = await CacheManager.shared.getString(CachePaths.themeKey.path);
    if (key == null || key.isEmpty) return ProductLightTheme().themeData;
    if (key == ThemeEnum.light.name) return ProductLightTheme().themeData;
    return ProductDarkTheme().themeData;
  }

  @override
  Future<void> setTheme({required String value}) async {
    await CacheManager.shared.setString(
      CachePaths.themeKey.path,
      value,
    );
  }

  @override
  Future<Locale> defaultLocale() async {
    final key = await CacheManager.shared.getString(CachePaths.localeKey.path);
    if (key == null || key.isEmpty || key != ProductLocale.en.name) {
      return ProductLocale.en.locale;
    }
    if (key == ProductLocale.ru.name) return ProductLocale.ru.locale;
    if (key == ProductLocale.tr.name) return ProductLocale.tr.locale;
    return ProductLocale.tm.locale;
  }

  @override
  Future<void> setLocale({required String value}) async {
    await CacheManager.shared.setString(
      CachePaths.themeKey.path,
      value,
    );
  }
}
