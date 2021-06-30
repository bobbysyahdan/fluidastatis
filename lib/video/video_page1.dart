import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:FluidaStatis/video_items.dart';

class VideoPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HUKUM ARCHIMEDES'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 400,
            child: VideoItems(
              videoPlayerController: VideoPlayerController.asset(
                'assets/videos/video_hukum_archimedes.mp4',
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


// import 'package:video_player/video_player.dart';
// import 'package:flutter/material.dart';

// void main() => runApp(VideoPage());

// class VideoPage extends StatefulWidget {
//   @override
//   _VideoPageState createState() => _VideoPageState();
// }

// class _VideoPageState extends State<VideoPage> {
//   VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.asset(
//         'assets/videos/video_2.mp4')
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {});
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Video Demo',
//       home: Scaffold(
//         body: Center(
//           child: _controller.value.initialized
//               ? AspectRatio(
//                   aspectRatio: _controller.value.aspectRatio,
//                   child: VideoPlayer(_controller),
//                 )
//               : Container(),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               _controller.value.isPlaying
//                   ? _controller.pause()
//                   : _controller.play();
//             });
//           },
//           child: Icon(
//             _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }
