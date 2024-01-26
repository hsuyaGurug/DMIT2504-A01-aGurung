// ignore_for_file: use_key_in_widget_constructors, todo

import 'package:flutter/material.dart';
import 'dart:math';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//This app makes use of the Row, Column,
//Expanded, Padding, Transform, Container,
//BoxDecoration, BoxShape, Colors,
//Border, Center, Align, Alignment,
//EdgeInsets, Text, and TextStyle Widgets
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("App1 - UI Layout"),
          backgroundColor: Colors.blue,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            //TODO: Put your code here to complete this app.
            //First Column
            Column(
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.amber,
                      border: Border.all(
                        color: Colors.black,
                        width: 4,
                      )),
                  child: const Center(
                    child: Text('Container 1'),
                  ),
                ),
                Transform.rotate(
                  angle: (pi / 4),
                  child: (Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: const BoxDecoration(
                        shape: BoxShape.rectangle, color: Colors.white),
                    child: (const Center(
                      child: Text('Container 2'),
                    )),
                  )),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  width: 100.0,
                  height: 100.0,
                  color: Colors.yellow,
                  child: (Text('Container 3')),
                )
              ],
            ),
            Column(),
          ],
        ),
      ),
    );
  }
}
