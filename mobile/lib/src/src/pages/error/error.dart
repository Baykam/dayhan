import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';

final class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, required this.mes});
  final String mes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Assets.lottie.errorLottie.lottie(
            height: 100,
          ),
          Center(
            child: Text(mes),
          ),
        ],
      ),
    );
  }
}
