import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';

final class ProductProgress extends StatelessWidget {
  const ProductProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Assets.lottie.loadingTime
            .lottie(height: 150, width: 150, fit: BoxFit.cover),
      ),
    );
  }
}
