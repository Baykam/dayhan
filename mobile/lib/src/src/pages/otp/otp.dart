import 'package:dayhan_mobile/app/router/path.dart';
import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:dayhan_mobile/src/src/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

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
      body: BlocBuilder<PostPhoneBloc, PostPhoneState>(
        builder: (context, state) => state.maybeWhen(
          orElse: ProductProgress.new,
          failed: (m) => ProductErrorWidget(error: m),
          success: (key) => ProductResponsive.build(
            context,
            AdaptAllView(
              phone: otpWidget(),
              tablet: otpWidget(width: 80),
              desktop: otpWidget(width: MediaQuery.sizeOf(context).width / 8),
            ),
          ),
        ),
      ),
    );
  }

  Widget otpWidget({double? height, double? width}) => SingleChildScrollView(
        child: Padding(
          padding: Productpadding.h15.padding,
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              OtpWidget(
                height: height,
                width: width,
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
      );

  @override
  showOtp(BuildContext context) {
    return showDialog(
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
                success: (token) {
                  context.pushNamed(RoutePath.navbar.name);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
