import 'package:bakujo/commons/utils.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    final double _heightScreen = MediaQuery.of(context).size.height;
    final double _widthScreen = MediaQuery.of(context).size.width;

    return GestureDetector( 
      onTap: (){
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
                        child: TextFormField(
                          autofocus: true,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(prefixText: '+992'),
                        ),
                      ),
                      SizedBox(
                        height: screenAwareSize(20, context),
                      ),
                      Container(
                          height: screenAwareSize(50, context),
                          width: _widthScreen - screenAwareSize(120, context),
                          child: FlatButton(
                            color: Colors.black12,
                            child: Text(
                              'ДАЛЕЕ',
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamed('/otp');
                            },
                          )),
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
