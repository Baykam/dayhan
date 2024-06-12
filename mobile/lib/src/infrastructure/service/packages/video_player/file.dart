import 'dart:io';

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
// import 'package:path_provider/path_provider.dart';
import 'package:video_player/video_player.dart';

final class ProductFileVideoPlayer extends StatefulWidget {
  const ProductFileVideoPlayer({super.key, required this.file});
  final File file;

  @override
  State<ProductFileVideoPlayer> createState() => _ProductFileVideoPlayerState();
}

class _ProductFileVideoPlayerState extends State<ProductFileVideoPlayer> {
  late VideoPlayerController controller;
  late ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    initFunc();
  }

  void initFunc()   {

    controller = VideoPlayerController.file(widget.file)
    ..initialize().then((_) => setState(() {}));
    chewieController = ChewieController(videoPlayerController: controller,
    autoPlay: true,
    );


  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (chewieController.videoPlayerController.value.isInitialized)
          Chewie(controller: chewieController)
        else
          const CircularProgressIndicator(),
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
