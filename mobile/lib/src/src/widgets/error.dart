import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';

final class ProductErrorWidget extends StatelessWidget {
  const ProductErrorWidget({super.key, required this.error});
  final String error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.lottie.errorLottie.lottie(
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
          Text(
            error,
            style: ProductTextStyle.i.t12,
          ),
        ],
      ),
    );
  }
}
