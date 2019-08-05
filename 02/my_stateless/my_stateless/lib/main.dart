import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
    title: 'Flutter App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.greenAccent,
      accentColor: Colors.orange, 
    ),
    home: Scaffold (
      appBar: AppBar(
        title: Text('Flutter'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('This is in center1'),
            Text('This is in center2 example flutter app'),
            RaisedButton(
              onPressed: (){},
              child: Text('Login'),
              color: Colors.brown,
              splashColor: Colors.blue,
            )
          ],
        ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(
          Icons.add_a_photo,
          color: Colors.black,
        ),
        ),
    ),
  );
  }
}