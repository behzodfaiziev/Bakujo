import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

class AuthState {
  //is current user exist
  Future<bool> currentUser() async {
    return await FirebaseAuth.instance.currentUser().then((firebaseUser) {
      return (firebaseUser != null) ? true : false;
    }).catchError((error) {
      return false;
    });
  }

  Future<bool> singOut() async {
    return await FirebaseAuth.instance
        .signOut()
        .then((value) => true)
        .catchError((err) => false);
  }
}
