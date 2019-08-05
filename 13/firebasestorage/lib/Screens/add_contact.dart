import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:io';
import '../Model/Contact.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'dart:async';

class AddContact extends StatefulWidget {
  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {

  DatabaseReference _databaseReference = FirebaseDatabase.instance.reference();
  String _firstName = '';
  String _lastName = '';
  String _phone = '';
  String _email = '';
  String _address = '';
  String _photoUrl = '';

  saveContact(BuildContext context) async {
    if(_firstName.isNotEmpty && 
    _lastName.isNotEmpty && 
    _phone.isNotEmpty &&
    _email.isNotEmpty &&
    _address.isNotEmpty) {
      Contact contact = Contact(this._firstName, 
      this._lastName, this._phone, this._email, this._address, this._photoUrl);
      await _databaseReference.push().set(contact.toJson());
      navigateToLastScreen(context);
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Field required'),
            content: Text('All fields are required'),
            actions: <Widget>[
              FlatButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }
      );
    }
  }

  Future pickImage() async {
    File file = await ImagePicker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 200.0,
      maxWidth: 200.0
    );
    String fileName = basename(file.path);
    uploadImage(file, fileName);
  }

  void uploadImage(File file, String fileName) async {
    StorageReference storageReference = FirebaseStorage.instance.ref().child(fileName);
    storageReference.putFile(file).onComplete.then(firebaseFile) async {
      var downloadUrl = await firebaseFile.ref.getDownloadURL();
      setState(() {
        _photoUrl = downloadUrl;
      });
    });
  }

  navigateToLastScreen(context) {
     Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add contact'),
      ),
      floatingActionButton: FloatingActionButton(
        
      ),
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20.0),
                child: GestureDetector(
                  on
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}