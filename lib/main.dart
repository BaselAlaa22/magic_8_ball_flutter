import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask me anything"),
        backgroundColor: Colors.blue[900],
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {


  @override
  _BallState createState() => _BallState();
}

int ballNumber=1;

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
          onPressed: (){
            setState(() {
              ballNumber= Random().nextInt(4)+1;
            });
            print(ballNumber);
          },
          child: Image.asset("images/ball$ballNumber.png"),),
    );
  }
}


