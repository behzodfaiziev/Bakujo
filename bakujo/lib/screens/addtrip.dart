import 'package:bakujo/theme/styles.dart';
import 'package:flutter/material.dart';

class AddTrip extends StatelessWidget {
  const AddTrip({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
          color: Theme.of(context).primaryColor,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30,),
              Text(
                'Не подтверждено',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.card_travel,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.directions_car,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.location_city,
                    color: Colors.white,
                  )
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: Center(
              child: RaisedButton(
                child: Text(
                  'Верификация',
                  style: regularTextStyle(Colors.black, 15),
                ),
                onPressed: () {},
              ),
            ),
          ),
        )
      ],
    );
  }
}
