import 'package:flutter/material.dart';

enum Productpadding {
  h15(padding: EdgeInsets.symmetric(horizontal: 15));

  final EdgeInsets padding;

  const Productpadding({required this.padding});
}
