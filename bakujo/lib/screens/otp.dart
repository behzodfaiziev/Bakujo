import 'package:bakujo/commons/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_verification_code_input/flutter_verification_code_input.dart';

class Otp extends StatefulWidget {
  @override
  _OptState createState() => _OptState();
}

class _OptState extends State<Otp> {
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
                  'Пожалуйста, введите код подтверждения, отправленный +992 933026202',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenAwareSize(12, context)),
                ),
                SizedBox(height: screenAwareSize(10, context)),
                VerificationCodeInput(
                  itemDecoration: BoxDecoration(
                      border:
                          Border(bottom: BorderSide(color: Colors.white70))),
                  autofocus: true,
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: screenAwareSize(15, context)),
                  keyboardType: TextInputType.number,
                  length: 4,
                  onCompleted: (values) {
                    print(values);
                  },
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
                      onPressed: () {
                        Navigator.of(context).pushNamed('/otp');
                      },
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
