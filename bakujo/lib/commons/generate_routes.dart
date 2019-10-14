import 'package:bakujo/screens/home.dart';
import 'package:bakujo/screens/otp.dart';
import 'package:bakujo/screens/registration.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Registration());
      case '/otp':
        return MaterialPageRoute(builder: (_) => Otp());
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
