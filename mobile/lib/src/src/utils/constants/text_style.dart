import 'package:flutter/material.dart';

/// product custom text Style's
final class ProductTextStyle {
  ProductTextStyle._();

  /// get instance this class
  static ProductTextStyle get i => ProductTextStyle._();

  /// style [12], width [w400], color [black]
  TextStyle t12 = const TextStyle(fontSize: 12);

  /// style [16], width [w400], color [black]
  TextStyle t16 = const TextStyle(fontSize: 16, fontWeight: FontWeight.w400);
}
