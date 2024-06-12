import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// project text form field widget
final class ProductTextFormFiled extends StatefulWidget {
  ///
  const ProductTextFormFiled({
    super.key,
    required this.hinttext,
    this.needSuffixIcon,
    this.controller,
    this.onChanged,
    this.textStyle,
    this.padding,
    this.validateText,
    this.validator,
    this.obscureText,
    this.titleCenter,
    this.prefix,
    this.textInputType,
    this.inputFormatters,
    this.backGroundColor,
  });

  final String hinttext;
  final bool? needSuffixIcon;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final TextStyle? textStyle;
  final double? padding;
  final String? validateText;
  final String? Function(String?)? validator;
  final bool? obscureText, titleCenter;
  final Widget? prefix;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final Color? backGroundColor;
  @override
  State<ProductTextFormFiled> createState() => _ProductTextFormFiledState();
}

class _ProductTextFormFiledState extends State<ProductTextFormFiled> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: widget.onChanged,
      inputFormatters: widget.inputFormatters,
      style: widget.textStyle ?? ProductTextStyle.i.t12,
      obscureText: widget.obscureText ?? _obscureText,
      controller: widget.controller,
      textAlign:
          widget.titleCenter ?? false ? TextAlign.center : TextAlign.justify,
      obscuringCharacter: "•",
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
          fillColor: widget.backGroundColor ?? Colors.transparent,
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
              vertical: widget.padding ?? 0, horizontal: 15),
          labelStyle: ProductTextStyle.i.t12,
          prefixIcon: widget.prefix,
          suffixIcon: widget.needSuffixIcon ?? false
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
          hintText: widget.hinttext,
          hintStyle: widget.textStyle ?? ProductTextStyle.i.t12,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: Colors.grey,
              width: 0.3,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: Colors.grey,
              width: 0.3,
            ),
          ),
          errorBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.zero,
            borderSide: BorderSide(
              color: Colors.red,
              width: 0.3,
            ),
          ),
          errorText: widget.validateText),
      validator: widget.validator,
    );
  }
}
