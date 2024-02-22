import 'package:flutter/material.dart';
import 'package:youtube_video_player/potrait_player.dart';

class FalsePage extends StatelessWidget {
  const FalsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
        ),
        backgroundColor: Colors.lightBlue,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset('lib/assets/back.png'),
            Positioned(
              child: Container(
                margin: EdgeInsets.only(right: 25, left: 25, top: 100),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: PotraitPlayer(
                          link: 'https://www.youtube.com/watch?v=-4FjHTnFAQQ',
                          aspectRatio: 16 / 9),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
