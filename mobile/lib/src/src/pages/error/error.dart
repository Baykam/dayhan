import 'package:flutter/material.dart';

final class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, required this.mes});
  final String mes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(mes),
      ),
    );
  }
}
