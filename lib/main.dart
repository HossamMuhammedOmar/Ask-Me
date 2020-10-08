import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffe74c3c),
        appBar: AppBar(
          backgroundColor: Color(0xff2c3e50),
          title: Text('Magic Ball'),
        ),
        body: Container(
          child: BallImage(),
        ),
      ),
    );
  }
}

class BallImage extends StatefulWidget {
  BallImage({Key key}) : super(key: key);

  @override
  _BallImageState createState() => _BallImageState();
}

class _BallImageState extends State<BallImage> {
  int imageNo = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                var rdm = new Random();
                var randomImage = rdm.nextInt(5) + 1;
                imageNo = randomImage;
              });
            },
            child: Image.asset('Images/ball$imageNo.png'),
          ),
        ),
      ],
    );
  }
}
