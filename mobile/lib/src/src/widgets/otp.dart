import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'index.dart';

final class OtpWidget extends StatelessWidget {
  const OtpWidget({super.key, this.width, this.height, this.controller});
  final double? width, height;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        6,
        (index) => SizedBox(
          height: height ?? 60,
          width: width ?? 60,
          child: ProductTextFormFiled(
            controller: controller,
            titleCenter: true,
            inputFormatters: [
              LengthLimitingTextInputFormatter(1),
            ],
            onChanged: (d) {
              if (d.isEmpty) {
                FocusScope.of(context).previousFocus();
              } else {
                FocusScope.of(context).nextFocus();
              }
            },
            hinttext: '0',
          ),
        ),
      ),
    );
  }
}
