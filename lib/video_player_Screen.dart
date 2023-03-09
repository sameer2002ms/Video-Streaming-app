import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  String datasource =
      'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4';

   late BetterPlayerController _betterPlayerController;

  @override
  void initState () {
    super.initState();
    BetterPlayerDataSource betterPlayerDataSource = BetterPlayerDataSource(
        BetterPlayerDataSourceType.network,
        datasource,);
    _betterPlayerController = BetterPlayerController(
        BetterPlayerConfiguration(
          autoPlay: true,
          looping: true
        ),
        betterPlayerDataSource: betterPlayerDataSource);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      // body: AspectRatio(
      //   aspectRatio: 16 / 9,
      //   child: BetterPlayer.network(
      //     datasource,
      //     betterPlayerConfiguration: BetterPlayerConfiguration(
      //         aspectRatio: 16 / 9,
      //         autoPlay: true,
      //         looping: true,
      //         fit: BoxFit.contain
      //     ),
      //   ),
      // ),

       body : AspectRatio(
        aspectRatio: 16 / 9,
    child: BetterPlayer(
    controller: _betterPlayerController,
    ),
       )
    );
  }
}
