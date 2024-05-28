import 'package:flutter/material.dart';

abstract class ISettings {
  Future<ThemeData> defaultData();
  Future<void> setTheme({required String value});
  Future<Locale> defaultLocale();

  Future<void> setLocale({required String value});
}
