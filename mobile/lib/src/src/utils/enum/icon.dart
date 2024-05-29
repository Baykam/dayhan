import 'package:flutter/material.dart';

enum ProductIcons {
  home(icon: Icons.home),
  settings(icon: Icons.settings),
  search(icon: Icons.search),
  ;

  final IconData icon;

  const ProductIcons({required this.icon});

  /// return Icon Widget
  Icon toIcon({Color color = Colors.black, double size = 24.0}) {
    return Icon(this.icon, color: color, size: size);
  }
}