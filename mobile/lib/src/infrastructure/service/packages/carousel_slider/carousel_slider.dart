import 'package:carousel_slider/carousel_slider.dart';
import 'package:dayhan_mobile/src/infrastructure/index.dart';
import 'package:flutter/widgets.dart';

import '../../../../src/utils/assets/index.dart';

final class ProductCarouselSlider extends StatelessWidget {
  const ProductCarouselSlider({super.key, required this.urls, this.isVideo});
  final List<String> urls;
  final bool? isVideo;
  @override
  Widget build(BuildContext context) {
    if (urls.isEmpty) return const Center(child: Text('Image List is Empty'));
    return CarouselSlider.builder(
        itemCount: urls.length,
        itemBuilder: (context, index, realIndex) {
          if(isVideo ?? false) {
          return ProductNetworkVideoPlayer(path: urls[index]);
          } else {
           return Image.network(urls[index],
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Assets.lottie.errorLottie.lottie(
              fit: BoxFit.contain,
            );
          },
          );
          }
        },
        options: CarouselOptions(
          scrollPhysics: const BouncingScrollPhysics(),
          autoPlay: true,
        ),
    );
  }
}
