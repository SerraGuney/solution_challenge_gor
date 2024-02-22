import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _tName = TextEditingController();
  final _tEmail = TextEditingController();
  final _tPassword = TextEditingController();
  final _tAvatar = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.amber,
        ),
        body: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              onSaved: (value) {
                if (value != null) {}
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              onSaved: (value) {
                if (value != null) {}
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15))),
              onSaved: (value) {
                if (value != null) {}
              },
            ),
            buildAvatarField(),
          ],
        ),
      ),
    );
  }

  Widget buildAvatarField() {
    return Container(
      margin: EdgeInsets.only(top: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 5, left: 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(0),
                //fixedSize: Size.fromHeight(70),
              ),
              child: const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("./lib/assets/elephant.png"),
                backgroundColor: Colors.white54,
              ),
              onPressed: () {
                print("test1");
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5, left: 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(0),
                //fixedSize: Size.fromHeight(70),
              ),
              child: const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("./lib/assets/graffe.png"),
                backgroundColor: Colors.white54,
              ),
              onPressed: () {
                print("test2");
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5, left: 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(0),
                //fixedSize: Size.fromHeight(70),
              ),
              child: const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("./lib/assets/turtle.png"),
                backgroundColor: Colors.white54,
              ),
              onPressed: () {
                print("test3");
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5, left: 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(0),
                //fixedSize: Size.fromHeight(70),
              ),
              child: const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("./lib/assets/racoon.png"),
                backgroundColor: Colors.white54,
              ),
              onPressed: () {
                print("test4");
              },
            ),
          ),
        ],
      ),
    );
  }
}
