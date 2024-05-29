import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.lottie.loadingTime.lottie(height: 200, width: 200),
          ...List.generate(
            10,
            (index) => ProductResponsive.build(
              context,
              AdaptAllView(
                phone: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  color: Colors.blue,
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                ),
                tablet: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  color: Colors.blue,
                  height: 100,
                  width: MediaQuery.sizeOf(context).width,
                ),
                desktop: Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  color: Colors.blue,
                  height: 100,
                  width: MediaQuery.sizeOf(context).width - 80,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
