import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    final double _heightScreen = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 500 / _heightScreen,
            child: Container(
              child: Center(
                child: Text('Sample Text',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 50,
                    )),
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 400 / _heightScreen,
            child: Container(
              color: Colors.white,
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 500 / _heightScreen,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(prefixText: '+992'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      height: 50,
                      width: 308,
                      child: FlatButton(
                        color: Colors.black12,
                        child: Text(
                          'ДАЛЕЕ',
                        ),
                        onPressed: () {},
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Нажимая "Далее", я принимаю условия \nсоглашения',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54, blurRadius: 4, spreadRadius: 0.3)
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
