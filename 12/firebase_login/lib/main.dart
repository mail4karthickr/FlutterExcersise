import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'SigninPage.dart';
import 'SignupPage.dart';

void main() => runApp(MyApp());

// First put google json file in Android and iOS
// Use gradle in Android plugin
// Do same for iOS
// yaml for flutter

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: <String, WidgetBuilder>{
        "/SigninPage": (context) => SigninPage(),
        "/SignupPage": (context) => SignupPage(),
      },
    );
  }
}