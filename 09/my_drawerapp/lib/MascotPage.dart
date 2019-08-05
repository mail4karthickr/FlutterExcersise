import 'package:flutter/material.dart';

class MascotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mascot Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Image(
               image: AssetImage("images/mascot.png")
            ),
            Text('Learn Code Online',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.normal
              ),
            )
          ]
        ),
      ),
    );
  }
}