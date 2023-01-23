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
    'l2BAM76LTWU',
    'bHpLl8H69V8',
    'zMv2oo_CnhY',
    'oWLSLpcF0iY',
    'Z7ZWbk-_jw4',
    't7nrOBBfcYI',
    '0cddsEaYMqg',
    'bIthHcAxehg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Exercise For Kids'),
      ),
      body: Column(
        children: [
          Flexible(
              child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  child: ListView.builder(
                    shrinkWrap: true,
                      itemCount: videoID.length,
                      itemBuilder: (context, index) => Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              child: YoutubePlayer(
                                controller: YoutubePlayerController(
                                    initialVideoId: videoID[index],
                                    flags: const YoutubePlayerFlags(
                                    autoPlay: false,
                                    )),
                                showVideoProgressIndicator: true,
                                progressIndicatorColor: Colors.blue,
                                progressColors: const ProgressBarColors(
                                    playedColor: Colors.black,
                                    handleColor: Colors.grey),
                              ),
                            ),
                          )))),
        ],
      ),
    );
  }
}
