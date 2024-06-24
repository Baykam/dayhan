import 'package:dayhan_mobile/src/src/utils/color/colors.dart';
import 'package:dayhan_mobile/src/src/utils/theme/custom_theme.dart';
import 'package:flutter/material.dart';

/// product dark theme
final class ProductDarkTheme implements CustomTheme {
  @override
  AppBarTheme get appBarTheme => const AppBarTheme();

  @override
  ThemeData get themeData => ThemeData.dark(
        useMaterial3: true,
  ).copyWith(
    listTileTheme: listTileTheme,
    appBarTheme: appBarTheme,
  );

  @override
  ListTileThemeData get listTileTheme =>  ListTileThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(
        color: ProductColor.i.white,
        width: 0.5,
      ),
    ),
  );

  @override
  IconButtonThemeData get iconButtonTheme =>IconButtonThemeData();
}
