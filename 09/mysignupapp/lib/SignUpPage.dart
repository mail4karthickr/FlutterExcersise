import 'package:flutter/material.dart';
import 'package:mysignupapp/HomePage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var _key = GlobalKey<FormState>(); 
  bool _autovalidate = false;
  String name, email, password, mobile, collegename;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        title: Text('SignUp')
      ),
      body: SingleChildScrollView(
              child: Form(
          key: _key,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)
            ),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.all(10.0)),
                Image(
                  image: AssetImage("images/logo.png"),
                  width: 100.0,
                  height: 100.0
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Enter name';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Name'
                    ),
                    onSaved: (input) => name = input
                  ),
                ),
                 ListTile(
                  leading: Icon(Icons.email),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Enter email';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'email'
                    ),
                    onSaved: (input) => email = input
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.security),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Enter password';
                      }
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password'
                    ),
                    onSaved: (input) => password = input
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Enter mobile';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'mobile'
                    ),
                    onSaved: (input) => mobile = input
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: TextFormField(
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Enter college name';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'college'
                    ),
                    onSaved: (input) => collegename = input
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                ButtonTheme(
                  height: 40.0,
                  minWidth: 200.0,
                  child: RaisedButton(
                    onPressed: _sendToNextScreen,
                    color: Colors.redAccent,
                    child: Text(
                      'Save',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20.0))
              ],
            )
          ),
        ),
      )
    );
  }

  _sendToNextScreen() {
    if (_key.currentState.validate()) {
      // Saves to global key
      _key.currentState.save();
      // Send to next screen
      Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => HomePage(
            name: name,
            email: email,
            password: password,
            mobile: mobile,
            collegename: collegename
          )
        )
      );
    } else {
      setState(() {
        _autovalidate = true;
      });
    }
  }
}