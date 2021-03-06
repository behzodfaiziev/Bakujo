import 'package:bakujo/models/user.dart';
import 'package:bakujo/screens/detailsTrip.dart';
import 'package:bakujo/screens/home.dart';
import 'package:bakujo/screens/otp.dart';
import 'package:bakujo/screens/registration.dart';
import 'package:bakujo/screens/search.dart';
import 'package:bakujo/screens/user_profile.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Registration());
      case '/otp':
        return MaterialPageRoute(
            builder: (_) => Otp(args as Map<String, String>));
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/userProfile':
      return MaterialPageRoute(builder: (_) => UserProfile());
      case '/tripDetail':
      return MaterialPageRoute(builder: (_) => DetailsTrip(user: args as User,));
      case '/search':
       return MaterialPageRoute(builder: (_) => Search());
      
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
