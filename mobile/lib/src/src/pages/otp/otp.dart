import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';

part 'mixin_otp.dart';

/// Otp Widget
final class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> with MixinOtp {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Assets.images.creditCard.svg(package: 'gen'),
          Assets.lottie.errorLottie.lottie(package: 'gen'),
        ],
      ),
    );
  }
}
