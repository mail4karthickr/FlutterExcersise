import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var spanishText = "spa1";
  var englisgText = "one";
  int counter = 0;
  
  var spanishNumbers = [
    "spa1",
    "spa2",
    "spa3",
    "spa4",
    "spa5",
    "spa6",
    "spa7",
    "spa8",
    "spa9",
    "spa10"
  ];

  var englishNumbers = [
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine",
    "ten"
  ];

  void changeText() {
    setState(() {
      counter = counter + 1;
      if (counter > 9) {
        counter = 0;
      }
      spanishText = spanishNumbers[counter];
      englisgText = englishNumbers[counter];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeText,
        child: Icon(Icons.add)
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(spanishText, style: TextStyle(fontSize: 30.0)),
              Padding(padding: EdgeInsets.all(5.0),),
              Text(englisgText, style: TextStyle(fontSize: 30.0)),
              Padding(padding: EdgeInsets.all(5.0),)
            ],
          ),
        ),
    );
  }
}
