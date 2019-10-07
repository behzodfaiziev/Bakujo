import 'package:flutter/material.dart';

class Otp extends StatefulWidget {
  @override
  _OptState createState() => _OptState();
}

class _OptState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(elevation: 0,),
        backgroundColor: Theme.of(context).primaryColor ,
        body: Container(),
      ),
      onTap: () {},
    );
  }
}
