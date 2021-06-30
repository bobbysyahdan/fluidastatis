import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:FluidaStatis/video_items.dart';

class VideoPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEGANGAN PERMUKAAN'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 400,
            child: VideoItems(
              videoPlayerController: VideoPlayerController.asset(
                'assets/videos/video_tegangan_permukaan.mp4',
              ),
              looping: false,
              autoplay: false,
            ),
          )
        ],
      ),
    );
  }
}