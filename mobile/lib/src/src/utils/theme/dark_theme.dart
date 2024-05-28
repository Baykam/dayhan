import 'package:dayhan_mobile/src/src/utils/theme/custom_theme.dart';
import 'package:flutter/material.dart';

/// product dark theme
final class ProductDarkTheme implements CustomTheme {
  @override
  AppBarTheme get appBarTheme => const AppBarTheme();

  @override
  ThemeData get themeData => ThemeData.dark(
        useMaterial3: true,
      );
}
