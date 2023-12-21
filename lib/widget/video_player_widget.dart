import 'package:chewie/chewie.dart';
import 'package:flutter/cupertino.dart';
import 'package:video_player/video_player.dart';

class VideoItem extends StatefulWidget {


  final String asset;
  const VideoItem(this.asset, {super.key});
  @override
  State<VideoItem> createState() => _VideoItemState();
}

class _VideoItemState extends State<VideoItem> {
  late VideoPlayerController _controller;
  ChewieController? _chewieController;

  @override
  void initState(){
    super.initState();
    // _controller = VideoPlayerController.network(widget.asset,)..initialize().then((_){
    //   setState(() {
    //     _controller.play();
    //     _controller.setLooping(true);
    //   });
    // });


    _controller = VideoPlayerController.network(widget.asset);
     Future.wait([_controller.initialize()]);
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: true,
      showControls: true,
      looping: true,
     // fullScreenByDefault: true
    );

  }

  @override
  Widget build(BuildContext context) {
    return  Chewie(
      
      controller: _chewieController!,
    );
  }

  @override
  void dispose(){
    _controller.dispose();
    _chewieController!.dispose();
    super.dispose();
  }
}