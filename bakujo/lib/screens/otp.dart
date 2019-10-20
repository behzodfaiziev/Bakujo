import 'package:bakujo/commons/utils.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Otp extends StatelessWidget {
  String phoneNumber;
  String verificationId;

  Otp(Map<String, String> receivedData) {
    this.phoneNumber = receivedData['phoneNumber'];
    this.verificationId = receivedData['verificationId'];
  }
  @override
  Widget build(BuildContext context) {
    final double _widthScreen = MediaQuery.of(context).size.width;
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
        ),
        backgroundColor: Theme.of(context).primaryColor,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
                top: screenAwareSize(50, context),
                left: screenAwareSize(10, context),
                right: screenAwareSize(10, context)),
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.sms,
                  color: Colors.white,
                  size: screenAwareSize(50, context),
                ),
                SizedBox(height: screenAwareSize(20, context)),
                Text(
                  'Пожалуйста, введите код подтверждения, отправленный ${this.phoneNumber}',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenAwareSize(12, context)),
                ),
                SizedBox(height: screenAwareSize(10, context)),
                SizedBox(
                  child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.number,
                      cursorColor: Colors.white,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                      )),
                  width: _widthScreen - screenAwareSize(140, context),
                ),
                SizedBox(height: screenAwareSize(20, context)),
                Container(
                    color: Colors.white,
                    height: screenAwareSize(40, context),
                    width: _widthScreen - screenAwareSize(140, context),
                    child: FlatButton(
                      color: Colors.black12,
                      child: Text(
                        'ДАЛЕЕ',
                      ),
                      onPressed: () {},
                    )),
              ],
            ),
          ),
        ),
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
    );
  }
}

