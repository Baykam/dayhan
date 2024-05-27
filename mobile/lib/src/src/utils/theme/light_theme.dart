import 'package:dayhan_mobile/src/src/utils/theme/custom_theme.dart';
import 'package:flutter/material.dart';

/// product light theme
final class ProductLightTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData.light(
        useMaterial3: true,
      );
}
