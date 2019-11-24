import 'package:bakujo/commons/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  String phoneNumber;
  String smsCode;
  String verificationId;

  bool sentVerification = false;

  GlobalKey<FormState> _formStateKey = GlobalKey<FormState>();

  Future<void> verifyNumber() async {
    if (!_formStateKey.currentState.validate()) 
      return;
    
    _formStateKey.currentState.save();

    setState(() {
      this.sentVerification = true;
    });

    final PhoneCodeAutoRetrievalTimeout autoRertrieve = (String verId) {
      this.verificationId = verId;
    };

    final PhoneVerificationCompleted verificationCompleted =
        (AuthCredential credential) {
      print('verified');
    };

    final PhoneVerificationFailed verificationFailed =
        (AuthException exception) {
      print('${exception.message}');
      setState(() {
        this.sentVerification = false;
      });
    };

    final PhoneCodeSent receivedSmsCode = (String verId, [int forceCodeSent]) {
      this.verificationId = verId;
      print('sent code : ${verId}');

      Map<String, String> toOpt = {
        'phoneNumber': this.phoneNumber,
        'verificationId': verId
      };

      setState(() {
        sentVerification = false;
      });

      Navigator.of(context).pushNamed('/otp', arguments: toOpt);
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: this.phoneNumber,
        codeAutoRetrievalTimeout: autoRertrieve,
        codeSent: receivedSmsCode,
        timeout: const Duration(seconds: 5),
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed);
  }

  @override
  Widget build(BuildContext context) {
    final double _heightScreen = MediaQuery.of(context).size.height;
    final double _widthScreen = MediaQuery.of(context).size.width;

    return GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Theme.of(context).primaryColor,
          body: Stack(
            fit: StackFit.expand,
            children: [
              FractionallySizedBox(
                alignment: Alignment.topCenter,
                heightFactor: screenAwareSize(400, context) / _heightScreen,
                child: Container(
                  padding: EdgeInsets.only(top: screenAwareSize(80, context)),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.message,
                        color: Colors.white,
                        size: screenAwareSize(50, context),
                      ),
                      SizedBox(
                        height: screenAwareSize(20, context),
                      ),
                      Text('Подтверждение',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: screenAwareSize(20, context),
                          )),
                      Text('\nпожалуйста введите ваш номер телефона',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.white70,
                            fontSize: screenAwareSize(10, context),
                          ))
                    ],
                  ),
                ),
              ),
              FractionallySizedBox(
                alignment: Alignment.bottomCenter,
                heightFactor:
                    1 - (screenAwareSize(400, context) / _heightScreen),
                child: Container(
                  color: Colors.white,
                ),
              ),
              FractionallySizedBox(
                alignment: Alignment.center,
                heightFactor: screenAwareSize(250, context) / _heightScreen,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black54,
                            blurRadius: 4,
                            spreadRadius: 0.3)
                      ]),
                  margin: EdgeInsets.all(screenAwareSize(20, context)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenAwareSize(40, context)),
                          child: Form(
                            key: _formStateKey,
                            child: TextFormField(
                              autofocus: true,
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(prefixText: '+992'),
                              validator: (value) {
                                if (value.isEmpty)
                                  return "Пожалуйста, введите свой номер телефона.";
                                else
                                  return null;
                              },
                              onSaved: (value) {
                                this.phoneNumber = '+992$value';
                              },
                            ),
                          )),
                      SizedBox(
                        height: screenAwareSize(20, context),
                      ),
                      Container(
                          height: screenAwareSize(40, context),
                          width: _widthScreen - screenAwareSize(120, context),
                          child: FlatButton(
                              color: Colors.black12,
                              child: (!this.sentVerification)
                                  ? Text(
                                      'ДАЛЕЕ',
                                    )
                                  : SizedBox(
                                      height: screenAwareSize(20, context),
                                      width: screenAwareSize(20, context),
                                      child: CircularProgressIndicator(
                                          strokeWidth: 2),
                                    ),
                              onPressed: verifyNumber)),
                      SizedBox(
                        height: screenAwareSize(20, context),
                      ),
                      Text(
                        'Нажимая "Далее", я принимаю условия \nсоглашения',
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
