import 'package:chewie/chewie.dart';
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
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  Future<void> initializePlayer() async {
    controller =
        VideoPlayerController.networkUrl(Uri.parse(widget.path));
    await controller.initialize();
    chewieController = ChewieController(videoPlayerController: controller);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (controller.value.isInitialized)
          Chewie(controller: chewieController)
          // VideoPlayer(controller)
        else
          const SizedBox(),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    chewieController.dispose();
    super.dispose();
  }
}
