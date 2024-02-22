import 'package:flutter/material.dart';
import 'package:gor_project/scenes/firstPageFalse.dart';
import 'package:gor_project/scenes/firstPageTrue.dart';
import 'package:youtube_video_player/potrait_player.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _FirstPage(),
    );
  }
}

class _FirstPage extends StatefulWidget {
  const _FirstPage({super.key});

  @override
  State<_FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<_FirstPage> {
  String mainUrl = 'https://www.youtube.com/watch?v=qK9_3HO05eM';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video"),
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.lightBlue,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('lib/assets/back.png'),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(right: 30, left: 30, top: 50),
              child: Column(children: <Widget>[
                Column(children: <Widget>[
                  PotraitPlayer(link: mainUrl, aspectRatio: 16 / 9),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FalsePage()));
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.red,
                          size: 100,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const TruePage()));
                          });
                        },
                        icon: Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: 100,
                        ),
                      ),
                    ],
                  )
                ]),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
