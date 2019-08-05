import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BG Changer",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var colors = [
    Colors.blue,
    Colors.blueAccent,
    Colors.orange,
    Colors.cyan,
    Colors.red,
    Colors.redAccent,
    Colors.tealAccent,
    Colors.pink,
    Colors.yellow,
    Colors.green
  ];

  var currentColor = Colors.white;
  var currentButtonColor = Colors.black;

  void changeBgColor() {
    var nextNum = Random().nextInt(colors.length);
    setState(() {
      currentColor = colors[nextNum];
      currentButtonColor = colors[nextNum];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: Container(
        color: currentColor,
        child: Center(
          child: RaisedButton(
            color: currentButtonColor,
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            child: Text('Change it!',
                style: TextStyle(fontSize: 30,  
                color: Colors.white,
                fontWeight: FontWeight.bold
                )
            ,),
            onPressed: changeBgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
              ),
          ),
        ),
      ),
    );
  }
}