import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Ask me anything'),
            backgroundColor: Colors.blue.shade500,
          ),
          body: BallPage(),
        ),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ballNum = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballNum.png'),
            ),
          ),
        ],
      ),
    );
  }
}
