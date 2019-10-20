import 'package:bakujo/commons/generate_routes.dart';
import 'package:bakujo/screens/home.dart';
import 'package:bakujo/screens/registration.dart';
import 'package:bakujo/services/auth_state.dart';
import 'package:flutter/material.dart';

void main() async {
  Widget _defaultHome = new Registration();

  // Get result of the login function.
  bool _result = await AuthState().currentUser();
  if (_result) {
    _defaultHome = Home();
  }

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Bakujo',
    theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.blueAccent,
        indicatorColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue, size: 30, opacity: 1)),
    home: _defaultHome,
    onGenerateRoute: RouteGenerator.generateRoute,
  ));
}
