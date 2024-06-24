import 'package:flutter/material.dart';

enum ProductLocale {
  en(locale: Locale('en')),
  tr(locale: Locale('tr')),
  tm(locale: Locale('tm')),
  ru(locale: Locale('ru'));

  final Locale locale;

  const ProductLocale({required this.locale});
}
