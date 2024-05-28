import 'package:dayhan_mobile/src/src/utils/index.dart';
import 'package:flutter/material.dart';

final class CAppbar extends StatelessWidget implements PreferredSize {
  const CAppbar({
    super.key,
    this.title,
    this.height,
    this.leading,
    this.titleStringColor,
    this.backgroundColor,
    this.actions,
  });
  final String? title;
  final double? height;
  final Widget? leading;
  final Color? titleStringColor, backgroundColor;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: leading ??
          CloseButton(
            color: ProductColor.i.black,
          ),
      title: Text(
        title ?? '',
        style: ProductTextStyle.i.t12
            .copyWith(color: titleStringColor ?? ProductColor.i.black),
      ),
      actions: actions,
      backgroundColor: backgroundColor ?? ProductColor.i.white,
      centerTitle: true,
    );
  }

  @override
  Widget get child => AppBar();

  @override
  Size get preferredSize => Size.fromHeight(height ?? 0);
}
