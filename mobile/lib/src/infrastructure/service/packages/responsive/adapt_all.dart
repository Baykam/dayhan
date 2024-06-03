import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// Make a adaptive view for all platforms
final class AdaptAllView extends StatelessWidget {
  /// Define your custom widget for every platform
  /// mobile, tablet, desktop
  const AdaptAllView({
    required this.phone,
    required this.tablet,
    required this.desktop,
    this.adaptWidth = false,
    super.key,
  });

  /// is the bool == false [double.infinity]
  final bool adaptWidth;

  /// Define your custom widget for mobile
  final Widget phone;

  /// Define your custom widget for tablet
  final Widget tablet;

  /// Define your custom widget for desktop
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isMobile) {
      if(adaptWidth) {
        return SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: phone,
        );
      }
      return phone;
    }
    if (ResponsiveBreakpoints.of(context).isTablet) {
      if(adaptWidth){
        return SizedBox(
          width: MediaQuery.sizeOf(context).width,
          child: tablet,
        );
      }
      return tablet;
    }
    if (ResponsiveBreakpoints.of(context).isDesktop) {
      if(adaptWidth){
        return SizedBox(
          width: MediaQuery.sizeOf(context).width - 80,
          child: desktop,
        );
      }
      return desktop;
    }

    return desktop;
  }
}
