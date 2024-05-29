import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';

final class ProductErrorWidget extends StatelessWidget {
  const ProductErrorWidget({super.key, this.error});
  final String? error;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: Assets.lottie.errorLottie.lottie(),
          ),
          Text(
            error ?? '',
            style: ProductTextStyle.i.t12,
          ),
        ],
      ),
    );
  }
}
