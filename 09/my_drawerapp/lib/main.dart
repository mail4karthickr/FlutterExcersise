import 'package:flutter/material.dart';
import 'Category.dart';
import 'MyHomePage.dart';
import 'MascotPage.dart';
import 'ProfilePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My drawer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(),
      routes:  <String, WidgetBuilder>{
        "/a": (BuildContext context) => Category(),
        "/b": (BuildContext context) => MascotPage(),
        "/c": (BuildContext context) => ProfilePage()
      }
    );
  }
}