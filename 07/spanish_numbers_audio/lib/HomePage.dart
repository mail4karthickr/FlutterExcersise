import 'package:flutter/material.dart';
import 'NumberAudio.dart';
import 'package:audioplayers/audio_cache.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  AudioCache audioPlayer = AudioCache();

  List<NumberAudio> numberList = [
    NumberAudio("one.wav", Colors.red, "One"),
    NumberAudio("two.wav", Colors.blue, "two"),
    NumberAudio("three.wav", Colors.green, "three"),
    NumberAudio("four.wav", Colors.pink, "Four"),
    NumberAudio("five.wav", Colors.brown, "Five"),
    NumberAudio("six.wav", Colors.blueGrey, "Six"),
    NumberAudio("seven.wav", Colors.teal, "Seven"),
    NumberAudio("eight.wav", Colors.grey, "Eight"),
    NumberAudio("nine.wav", Colors.orange, "Nine"),
    NumberAudio("ten.wav", Colors.purple, "Ten"),
  ];

  play(String uri) {
    audioPlayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spanish numbers'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage("images/logo.png")
              ),
              Row (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                        SizedBox(
                          width: 200,
                          height: 100,
                          child: RaisedButton( 
                          child: Text('One')
                        ),
                        ),
                       SizedBox(
                          width: 200,
                          height: 100,
                          child: RaisedButton( 
                          child: Text('One')
                        ),
                        )
                    ]
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton( 
                          child: Text('One')
                        )
                      ), 
                      Expanded(
                        child: RaisedButton( 
                          child: Text('One')
                        )
                      )
                    ]
                  ),
                ]
              ),
          ),
        ),
      ),
    );
  }
}