import 'package:dayhan_mobile/app/router/path.dart';
import 'package:dayhan_mobile/src/application/index.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:dayhan_mobile/src/src/widgets/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_framework/responsive_framework.dart';

part 'mixin_auth.dart';

/// auth widget
final class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> with MixinAuth {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: ProductResponsive.build(
        context,
        AdaptAllView(
          phone: authWidget(),
          tablet: authWidget(),
          desktop: authWidget(),
        ),
      ),
    );
  }

  Widget authWidget({String? title}) => SingleChildScrollView(
        child: Padding(
          padding: Productpadding.h15.padding,
          child: Column(
            children: [
              ProductTextFormFiled(
                obscureText: false,
                controller: context.read<PostPhoneBloc>().phone,
                hinttext: title ?? 'phone',
                textInputType: TextInputType.number,
              ),
              ClampingScrollWrapper(
                dragWithMouse: true,
                child: ElevatedButton(
                  onPressed: onTap,
                  child: const Text('go otp page'),
                ),
              ),
            ],
          ),
        ),
      );
}
