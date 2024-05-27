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
    return const Placeholder();
  }
}
