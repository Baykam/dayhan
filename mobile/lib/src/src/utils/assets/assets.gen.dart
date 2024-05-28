/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';
import 'package:lottie/lottie.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/credit_card.svg
  SvgGenImage get creditCard =>
      const SvgGenImage('assets/images/credit_card.svg');

  /// File path: assets/images/home.svg
  SvgGenImage get home => const SvgGenImage('assets/images/home.svg');

  /// File path: assets/images/love.svg
  SvgGenImage get love => const SvgGenImage('assets/images/love.svg');

  /// File path: assets/images/profile.svg
  SvgGenImage get profile => const SvgGenImage('assets/images/profile.svg');

  /// File path: assets/images/shopping_bag.svg
  SvgGenImage get shoppingBag =>
      const SvgGenImage('assets/images/shopping_bag.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [creditCard, home, love, profile, shoppingBag];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/accepted.json
  LottieGenImage get accepted =>
      const LottieGenImage('assets/lottie/accepted.json');

  /// File path: assets/lottie/error_lottie.json
  LottieGenImage get errorLottie =>
      const LottieGenImage('assets/lottie/error_lottie.json');

  /// File path: assets/lottie/internet_no_coming.json
  LottieGenImage get internetNoComing =>
      const LottieGenImage('assets/lottie/internet_no_coming.json');

  /// File path: assets/lottie/loading_time.json
  LottieGenImage get loadingTime =>
      const LottieGenImage('assets/lottie/loading_time.json');

  /// File path: assets/lottie/love.json
  LottieGenImage get love => const LottieGenImage('assets/lottie/love.json');

  /// List of all assets
  List<LottieGenImage> get values =>
      [accepted, errorLottie, internetNoComing, loadingTime, love];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size = null,
  }) : _isVecFormat = true;

  final String _assetName;

  final Size? size;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture(
      _isVecFormat
          ? AssetBytesLoader(_assetName,
              assetBundle: bundle, packageName: package)
          : SvgAssetLoader(_assetName,
              assetBundle: bundle, packageName: package),
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class LottieGenImage {
  const LottieGenImage(this._assetName);

  final String _assetName;

  LottieBuilder lottie({
    Animation<double>? controller,
    bool? animate,
    FrameRate? frameRate,
    bool? repeat,
    bool? reverse,
    LottieDelegates? delegates,
    LottieOptions? options,
    void Function(LottieComposition)? onLoaded,
    LottieImageProviderFactory? imageProviderFactory,
    Key? key,
    AssetBundle? bundle,
    Widget Function(BuildContext, Widget, LottieComposition?)? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    BoxFit? fit,
    AlignmentGeometry? alignment,
    String? package,
    bool? addRepaintBoundary,
    FilterQuality? filterQuality,
    void Function(String)? onWarning,
  }) {
    return Lottie.asset(
      _assetName,
      controller: controller,
      animate: animate,
      frameRate: frameRate,
      repeat: repeat,
      reverse: reverse,
      delegates: delegates,
      options: options,
      onLoaded: onLoaded,
      imageProviderFactory: imageProviderFactory,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      package: package,
      addRepaintBoundary: addRepaintBoundary,
      filterQuality: filterQuality,
      onWarning: onWarning,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
