// import 'package:flutter/material.dart';
// import 'package:video_player/video_player_Screen.dart';
//
// class PlayerScreen extends StatefulWidget {
//   const PlayerScreen({Key? key}) : super(key: key);
//
//   @override
//   State<PlayerScreen> createState() => _PlayerScreenState();
// }
//
// class _PlayerScreenState extends State<PlayerScreen> {
//   String datasource =
//       'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4';
//
//   VideoPlayerController? _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.network(datasource)
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {});
//       });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text("Player App"),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: Column(
//         children: [
//           //here i have initialised the video
//           _controller!.value.isInitialized
//               ? AspectRatio(
//                   aspectRatio: _controller!.value.aspectRatio,
//                   child: VideoPlayer(_controller!),
//                 )
//               : Container(),
//           //here  i have added the progress indicator
//           VideoProgressIndicator(_controller!, allowScrubbing: true,
//           padding: EdgeInsets.all(10),),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.skip_previous),
//                 color: Colors.black,
//               ),
//               IconButton(
//                 onPressed: () {
//                   _controller!.value.isPlaying
//                       ? _controller!.pause()
//                       : _controller!.play();
//                 },
//                 icon: Icon(Icons.play_arrow),
//                 color: Colors.black,
//               ),
//               IconButton(
//                 onPressed: () {},
//                 icon: Icon(Icons.skip_next),
//                 color: Colors.black,
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.all(18.0),
//             child: Text(
//               "Beautiful Bee",
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 28.0,
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//           Text(
//             "bee is sucking the flower juice",
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 19.0,
//                 fontWeight: FontWeight.normal),
//           )
//         ],
//       ),
//     );
//   }
// }
