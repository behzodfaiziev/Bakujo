import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';

class AuthState {

  //is current user exist
  Future<bool> currentUser() async {
    return await FirebaseAuth.instance.currentUser().then((firebaseUser) {
      return true;
    }).catchError((error) {
      return false;
    });
  }
}
