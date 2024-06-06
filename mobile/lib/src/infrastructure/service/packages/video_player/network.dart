import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

final class ProductNetworkVideoPlayer extends StatefulWidget {
  const ProductNetworkVideoPlayer({super.key, required this.path});
  final String path;
  @override
  State<ProductNetworkVideoPlayer> createState() =>
      _ProductNetworkVideoPlayerState();
}

class _ProductNetworkVideoPlayerState extends State<ProductNetworkVideoPlayer> {
  late VideoPlayerController controller;

  @override
  void initState() {
    controller = VideoPlayerController.networkUrl(
      Uri.parse(widget.path),
      videoPlayerOptions: VideoPlayerOptions(),
    );
    controller.initialize().then(
          (value) => setState(
            () {},
          ),
        );
    controller.play();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (controller.value.isInitialized)
          VideoPlayer(controller)
        else
          const CircularProgressIndicator(),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
