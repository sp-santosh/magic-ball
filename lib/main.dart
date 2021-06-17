import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ball = 1;
  void randomNumber() {
    ball = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    //return Container(

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff8FBC8F),
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          title: Text(
            'Magic 8 Ball',
            textAlign: TextAlign.center,
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  child: Text(
                    "Confess Yourself!!",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Container(
                  child: Text(
                    "And Tap Me",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {
                      setState(() {
                        randomNumber();
                      });
                    },
                    child: Image.asset('images/ball$ball.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
