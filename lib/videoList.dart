import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class videoList extends StatefulWidget {

  final VideoPlayerController videoPlayerController;
  final bool looping;

  videoList({
    @required
    this.looping,
    this.videoPlayerController,
    Key key,
  }): super(key: key);
  @override
  _videoListState createState() => _videoListState();
}

class _videoListState extends State<videoList> {
  ChewieController _chewieController;

  @override
  void initState(){
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16/9,
      autoInitialize: true,
      looping: widget.looping,

      errorBuilder: (context ,errorMessage){
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      }
    );
  }
  @override
  void dispose(){
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController,
      ),
      
    );
  }
}