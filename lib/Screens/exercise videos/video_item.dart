import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoItems extends StatefulWidget {

final VideoPlayerController videoPlayerController;
final bool? looping;
final bool? autoplay;
  VideoItems({
  required this.videoPlayerController,
  this.looping, this.autoplay,

});

  @override
  State<VideoItems> createState() => _VideoItemsState();
}

class _VideoItemsState extends State<VideoItems> {

  var _chewieController;
void initState() {
  super.initState();
  _chewieController = ChewieController(
    videoPlayerController: widget.videoPlayerController,
    aspectRatio:16/9,
    autoInitialize: true,
    autoPlay: widget.autoplay!,
    looping: widget.looping!,
    errorBuilder: (context, errorMessage) {
      return Center(
        child: Text(
          errorMessage,
          style: const TextStyle(color: Colors.white),
        ),
      );
    },
  );
}

 @override
Widget build(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Chewie(
      
      controller: _chewieController,
    ),
  );
}
}