import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';

import '../../../../src/utils/assets/index.dart';

final class ProductCarouselSlider extends StatelessWidget {
  const ProductCarouselSlider({super.key, required this.urls});
  final List<String> urls;
  @override
  Widget build(BuildContext context) {
    if (urls.isEmpty) return const Center(child: Text('Image List is Empty'));
    return CarouselSlider.builder(
        itemCount: urls.length,
        itemBuilder: (context, index, realIndex) {
          return Image.network(urls[index],
          errorBuilder: (context, error, stackTrace) {
            return Container(
              height: 100,
              width: 100,
              child: Column(
                children: [
                  Assets.lottie.errorLottie.lottie(),
                ],
              ),
            );
          },
          );
        },
        options: CarouselOptions(
          scrollPhysics: const BouncingScrollPhysics(),
          autoPlay: true,
        ),
    );
  }
}
