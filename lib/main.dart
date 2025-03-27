import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text('Ask Me Anything'),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int imageNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Container(
          child: TextButton(
            onPressed: () {
              setState(() {
              imageNumber = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$imageNumber.png'),
          ),
          padding: EdgeInsets.all(30),
        ),
      ),
    );
  }
}
