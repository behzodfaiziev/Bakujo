import 'package:bakujo/commons/generate_routes.dart';
import 'package:bakujo/screens/otp.dart';
import 'package:bakujo/screens/registration.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bakujo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Registration(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
