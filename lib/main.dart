import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[700],
        appBar: AppBar(backgroundColor: Colors.red[700],title: Text('DiceMwon'),elevation: 0,),
        body: DiceHome(),
      ),
    );
  }
}

class DiceHome extends StatefulWidget {
  @override
  _DiceHomeState createState() => _DiceHomeState();
}

class _DiceHomeState extends State<DiceHome> {

  int right = 1;
  int left = 1;

  void changeDice(){
    right = Random().nextInt(6) + 1;
    left = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(children: <Widget>[
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/dice$left.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/dice$right.png'),
              ),)
          ],),
          RaisedButton(
            onPressed: (){
              setState(() {
                changeDice();
              });
            },
            textColor: Colors.red[800],
            child: Text('Roll'),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
