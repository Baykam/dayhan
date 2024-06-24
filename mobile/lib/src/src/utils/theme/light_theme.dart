import 'package:dayhan_mobile/src/src/utils/color/colors.dart';
import 'package:dayhan_mobile/src/src/utils/theme/custom_theme.dart';
import 'package:flutter/material.dart';

/// product light theme
final class ProductLightTheme implements CustomTheme {
  @override
  ThemeData get themeData => ThemeData.light(
        useMaterial3: true,
  ).copyWith(
    listTileTheme: listTileTheme,
    appBarTheme: appBarTheme,
    iconButtonTheme: iconButtonTheme,
  );

  @override
  AppBarTheme get appBarTheme => const AppBarTheme();

  @override
  ListTileThemeData get listTileTheme => ListTileThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(
        color: ProductColor.i.black,
        width: 0.5,
      ),
    ),
  );

  @override
  IconButtonThemeData get iconButtonTheme => IconButtonThemeData();
}
