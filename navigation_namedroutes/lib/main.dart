import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'ExtractArguments.dart';
import 'ScreenArguments.dart';
import 'PassArgumentsScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes demo',
    onGenerateRoute: (settings) {
      if (settings.name == PassArgumentsScreen.routeName) {
        final ScreenArguments args = settings.arguments;
        return MaterialPageRoute(
          builder: (context) {
            return PassArgumentsScreen(
              title: args.title,
              message: args.message,
            );
          }
        );
      }
    },
    initialRoute: '/',
    routes: {
      '/': (context) => FirstScreen(),
      ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen()
    },
  ));
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Extract arguments screen'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, 
                ExtractArgumentsScreen.routeName,
                arguments: ScreenArguments(
                  'Extract Arguments Screen',
                  'This message is extracted in the build method.',
                ));
              },
            ),
            RaisedButton(
              child: Text('Pass arguments screen'),
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, 
                ExtractArgumentsScreen.routeName,
                arguments: ScreenArguments(
                  'Extract Arguments Screen',
                  'This message is extracted in the build method.',
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}