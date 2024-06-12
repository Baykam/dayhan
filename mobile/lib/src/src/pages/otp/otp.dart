// ignore_for_file: inference_failure_on_instance_creation

import 'package:dayhan_mobile/app/router/path.dart';
import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:dayhan_mobile/src/src/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

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
      appBar: AppBar(
        title: const Text('Otp page'),
        centerTitle: true,
      ),
      body: BlocBuilder<PostPhoneBloc, PostPhoneState>(
        builder: (context, state) => state.maybeWhen(
          orElse: ProductProgress.new,
          failed: (m) => ProductErrorWidget(error: m),
          success: (key) => otpWidget(),
          // ProductResponsive.build(
          //   context,
          //   AdaptAllView(
          //     phone: otpWidget(),
          //     tablet: otpWidget(width: 80),
          //     desktop: otpWidget(width: MediaQuery.sizeOf(context).width / 8),
          //   ),
          // ),
        ),
      ),
    );
  }

  Widget otpWidget({double? height, double? width}) => SingleChildScrollView(
        child: Padding(
          padding: Productpadding.h15.padding,
          child: Form(
            key: key,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text('This sms Digits not working now backend api '
                    '123456 is the sms code'),
                const SizedBox(
                  height: 30,
                ),
                Pinput(
                  length: 6,
                  controller: otptext,
                  validator: validateText,
                  inputFormatters: [LengthLimitingTextInputFormatter(6)],
                ),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: onTap,
                  child: const Text('Go to Home page'),
                ),
              ],
            ),
          ),
        ),
      );

  @override
  Future<dynamic> showOtp(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: SizedBox(
            height: 250,
            child: BlocConsumer<PostTokenBloc, PostTokenState>(
              builder: (context, state) => state.maybeWhen(
                orElse: () => const ProductProgress(),
                failed: (m) => ProductErrorWidget(error: m),
                success: (token) => Assets.lottie.accepted.lottie(),
              ),
              listener: (context, state) {
                state.whenOrNull(
                  failed: (m) => Future.delayed(const Duration(seconds: 2))
                      .then((value) => Navigator.pop(context, false)),
                  success: (token) async {
                    await Future.delayed(const Duration(seconds: 2))
                        .then((value) {
                      Navigator.pop(context, true);
                      context.goNamed(RoutePath.navbar.name);
                    });
                  },
                );
              },
            ),
          ),
        ),
      );
}
