import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class Contact {
  String _id;
  String _firstName;
  String _lastName;
  String _phone;
  String _email;
  String _address;
  String _photoUrl;

  //Constructor for add
  Contact(this._firstName, this._lastName, this._phone,
  this._email, this._address, this._photoUrl);

  // constructor for edit
  Contact.withId(this._id, this._firstName, this._lastName, this._phone,
  this._email, this._address, this._photoUrl);

  //getters
  String get id => this._id;
  String get firstName => this._firstName;
  String get lastName => this._lastName;
  String get phone => this._phone;
  String get email => this._email;
  String get address => this._address;
  String get photoUrl => this._photoUrl;

  //setters
  set firstName(String firstName) {
    this._firstName = firstName;
  }

  set lastName(String lastName) {
    this._lastName = lastName;
  }

  set phone(String phone) {
    this._phone = phone;
  }

  set email(String email) {
    this._email = email;
  }

  set address(String emaddressail) {
    this._address = address;
  }

  set photoUrl(String photoUrl) {
    this._photoUrl = photoUrl;
  }

  Contact.fromSnapshot(DataSnapshot snapShot) {
    this._id = snapShot.key;
    this._firstName = snapShot.value['firstName'];
    this._lastName = snapShot.value['lastName'];
    this._phone = snapShot.value['phone'];
    this._email = snapShot.value['email'];
    this._address = snapShot.value['address'];
    this._photoUrl = snapShot.value['photoUrl'];  
  }

  Map<String, dynamic> toJson() {
    return {
      'firstName': _firstName,
      'lastName': _lastName,
      'phone': _phone,
      'email': _email,
      'address': _address,
      'photoUrl': _phone
    };
  }
}