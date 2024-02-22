import 'package:flutter/material.dart';
import 'package:gor_project/scenes/firstPage.dart';
import 'package:gor_project/scenes/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State {
  String selectedImage = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("lib/assets/turtle.png"),
              backgroundColor: Colors.white,
            ),
            Text("  "),
            Text("GOR"),
          ],
        ),
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('lib/assets/back.png'),
          Positioned(
            child: Container(
              margin: EdgeInsets.only(right: 80, left: 80, top: 200),
              child: Column(children: <Widget>[
                Container(
                    margin: EdgeInsets.only(bottom: 30), child: buildButtun1()),
                Container(
                    margin: EdgeInsets.only(bottom: 30), child: buildButtun2()),
              ]),
            ),
          )
        ],
      ),
    );
  }

  Widget buildButtun1() {
    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: OutlinedButton(
            child: Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      "5-7 Age",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Center(
                    child: Text("Parental Supervision",
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                  )
                ],
              ),
            ),
            style: OutlinedButton.styleFrom(
                fixedSize: Size.fromHeight(80),
                side: BorderSide(width: 3),
                foregroundColor: Colors.black),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FirstPage()));
            },
          ),
        )
      ],
    );
  }

  Widget buildButtun2() {
    return Row(
      children: <Widget>[
        Flexible(
          fit: FlexFit.tight,
          flex: 1,
          child: OutlinedButton(
            child: Text(
              "8-12 Age",
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            style: OutlinedButton.styleFrom(
                fixedSize: Size.fromHeight(80),
                side: BorderSide(width: 3),
                foregroundColor: Colors.black),
            onPressed: () {
              print("test");
            },
          ),
        )
      ],
    );
  }
}
