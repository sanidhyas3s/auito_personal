import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home1(),
    );
  }
}

class Home1 extends StatelessWidget {


  // YouTube Video Full URL : https://www.youtube.com/watch?v=dFKhWe2bBkM&feature=emb_title&ab_channel=BBKiVines

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: "iAtsJDDeR3s",
    flags: YoutubePlayerFlags(
      autoPlay: true,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Here\'s a video for you to watch!'),
        ),
        body: Container(
          child: YoutubePlayer(
            controller: _controller,
            liveUIColor: Colors.amber,
            showVideoProgressIndicator: true,
          ),
        ));
  }
}
