import 'dart:io';

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

  @override
  void initState() {
    super.initState();
    initFunc();
  }

  Future<void> initFunc()  async {
    controller = VideoPlayerController.file(widget.file);
    await controller.initialize().then((_) => setState(() {}));
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
