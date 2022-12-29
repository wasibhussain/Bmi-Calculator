import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ExerciseVideos extends StatefulWidget {
  @override
  _ExerciseVideosState createState() => _ExerciseVideosState();
}

class _ExerciseVideosState extends State<ExerciseVideos> {
  late YoutubePlayerController _youtubePlayerController;
  @override
  void initState() {
    super.initState();
    _youtubePlayerController = YoutubePlayerController(
        initialVideoId: videoID[0],
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));

    print("==>>>${_youtubePlayerController.metadata.title}");
  }

  List<String> videoID = [
    '3gU1OLKBcys',
    '5AxWC49ZMzs',
    '3gU1OLKBcys',
    '5AxWC49ZMzs',
    '5AxWC49ZMzs',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube Player'),
      ),
      body: Column(
        children: [
          Flexible(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: ListView.builder(
                      itemCount: videoID.length,
                      itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 8),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  YoutubePlayer(
                                    controller: YoutubePlayerController(
                                        initialVideoId: videoID[index],
                                        flags: const YoutubePlayerFlags(
                                          autoPlay: false,
                                        )),
                                    // showVideoProgressIndicator: true,
                                    progressIndicatorColor: Colors.blue,
                                    progressColors: const ProgressBarColors(
                                        playedColor: Colors.black,
                                        handleColor: Colors.grey),
                                  ),
                                  Text(_youtubePlayerController.metadata.title)
                                ],
                              ),
                            ),
                          )))),
        ],
      ),
    );
  }
}
