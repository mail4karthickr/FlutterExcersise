import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/container.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        color: Colors.red,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                Row(
                  children: <Widget>[
                      Text('Name:',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      Padding(padding: EdgeInsets.only(left: 30.0)),
                      Text('Karthick',
                      style: TextStyle(
                          fontSize: 30,
                        )
                      )
                    ]
                  ),
                  Padding(padding: EdgeInsets.only(top: 30.0)),
                  Row(
                  children: <Widget>[
                      Text('email:',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        )
                      ),
                      Padding(padding: EdgeInsets.only(left: 30.0)),
                      Text('mail4karthickr@gmail.com',
                      style: TextStyle(
                          fontSize: 30,
                        )
                      )
                    ]
                  )
                ]
              )
      )
    );
  }
}