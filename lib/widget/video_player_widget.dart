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

  @override
  void initState(){
    super.initState();
    _controller = VideoPlayerController.network(widget.asset,)..initialize().then((_){
      setState(() {
        _controller.play();
        _controller.setLooping(true);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayer(_controller);
  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
}