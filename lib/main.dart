import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(Magisco());

class Magisco extends StatefulWidget {
  @override
  _MagiscoState createState() => _MagiscoState();
}

class _MagiscoState extends State<Magisco> {
  int randNo;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
            title: Text('Ask me anything!'), backgroundColor: Colors.blue),
        body: Center(
          child: Container(child: drawBall()),
        ),
      ),
    );
  }

  Widget drawBall() {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(
            () {
              randNo = Random().nextInt(5) + 1;
            },
          );
        },
        child: Image.asset('images/ball$randNo.png'),
      ),
    );
  }
}
