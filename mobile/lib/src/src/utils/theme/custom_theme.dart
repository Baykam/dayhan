import 'package:flutter/material.dart';

/// Project 's common usage theme data's
abstract class CustomTheme {
  /// theme data
  ThemeData get themeData;

  /// app bar theme data
  AppBarTheme get appBarTheme;

  ListTileThemeData get listTileTheme;

  IconButtonThemeData get iconButtonTheme;
}
