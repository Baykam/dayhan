import 'package:flutter/material.dart';

enum ProductLocale {
  en(locale: Locale('en'), dd: 'en'),
  tr(locale: Locale('tr')),
  tm(locale: Locale('tm')),
  ru(locale: Locale('ru')),
  ;

  final Locale locale;
  final String? dd;

  const ProductLocale({required this.locale, this.dd});
}
