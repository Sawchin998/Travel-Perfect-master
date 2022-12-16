import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'videoList.dart';
class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Videos'),
      ),
      body: ListView(
        children: <Widget>[
          videoList(
            videoPlayerController:VideoPlayerController.asset('videos/ABC.mp4'),
            looping: true,
          ),
         videoList(
            videoPlayerController:VideoPlayerController.asset('videos/Eversest.mp4'),
            looping: true,
          ),
          videoList(
            videoPlayerController:VideoPlayerController.asset('videos/Mardi.mp4'),
            looping: true,
          ),
          videoList(
            videoPlayerController:VideoPlayerController.asset('videos/Tilicho.mp4'),
            looping: true,
          ),
        ],
      ),
      
    );
  }
}