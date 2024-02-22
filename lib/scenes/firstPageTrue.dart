import 'package:flutter/material.dart';
import 'package:youtube_video_player/potrait_player.dart';

class TruePage extends StatefulWidget {
  const TruePage({super.key});

  @override
  State<TruePage> createState() => _TruePageState();
}

class _TruePageState extends State<TruePage> {
  String trueUrl = 'https://www.youtube.com/watch?v=Gzs9bdEP6R4';

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
                      child: PotraitPlayer(link: trueUrl, aspectRatio: 16 / 9),
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
