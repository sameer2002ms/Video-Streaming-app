// import 'package:better_player/better_player.dart';
// import 'package:flutter/material.dart';
//
// class VideoScreen extends StatefulWidget {
//   const VideoScreen({Key? key}) : super(key: key);
//
//   @override
//   State<VideoScreen> createState() => _VideoScreenState();
// }
//
// class _VideoScreenState extends State<VideoScreen> {
//   late BetterPlayerController _betterPlayerController;
//
//   @override
//   void initState () {
//     super.initState();
//
//     // Create a BetterPlayerDataSource object for the video.
//     String dataSourceUrl = 'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4';
//     BetterPlayerDataSource dataSource = BetterPlayerDataSource(
//         BetterPlayerDataSourceType.network,
//         dataSourceUrl
//     );
//
//     // Create a BetterPlayerConfiguration object with desired configurations.
//     BetterPlayerConfiguration config = BetterPlayerConfiguration(
//       autoPlay: true,
//       looping: true,
//       aspectRatio: 16 / 9,
//     );
//
//     // Create a BetterPlayerController object with the configuration and data source.
//     _betterPlayerController = BetterPlayerController(
//       config,
//       betterPlayerDataSource: dataSource,
//     );
//
//     // Add a listener to the controller to handle playback finished event.
//     _betterPlayerController.addEventsListener((event) {
//       if (event.betterPlayerEventType == BetterPlayerEventType.finished) {
//         // Handle playback finished event here.
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Video Player"),
//         backgroundColor: Colors.black,
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: AspectRatio(
//         aspectRatio: 16 / 9,
//         child: BetterPlayer(controller: _betterPlayerController),
//       ),
//     );
//   }
// }
//
