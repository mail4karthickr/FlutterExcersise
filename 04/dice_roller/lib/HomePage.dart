import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/src/widgets/container.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  AssetImage diceImage1;
  AssetImage diceImage2;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceImage1 = one;
      diceImage2 = one;
    });
  }

  void rollDice() {
    int random1 = (1 + Random().nextInt(6));
    int random2 = (1 + Random().nextInt(6));
    var numbers = [one, two, three, four, five, six];
    setState(() {
      diceImage1 = numbers[random1];
      diceImage2 = numbers[random2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
      ), 
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(
                image: diceImage1,
                width: 100.0,
                height: 100.0,
              ),
               Container(
                 margin: EdgeInsets.only(top: 30.0),
                 child: Image(
                  image: diceImage2,
                  width: 100.0,
                  height: 100.0,
              ),
               ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: RaisedButton(
                  color: Colors.yellow,
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                  child: Text('Roll the dice!'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  onPressed: rollDice,
                ),
              )
            ],
        ),
      ),)
    );
  }
}