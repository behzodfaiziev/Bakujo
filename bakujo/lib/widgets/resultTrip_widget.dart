import 'package:bakujo/commons/utils.dart';
import 'package:bakujo/models/user.dart';
import 'package:bakujo/theme/styles.dart';
import 'package:flutter/material.dart';

class ResultTripWidget extends StatelessWidget {
  final User user;

  ResultTripWidget(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: screenAwareSize(20, context),
          right: screenAwareSize(20, context),
          bottom: screenAwareSize(20, context)),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [hamrohCardShadow()],
          borderRadius: BorderRadius.circular(screenAwareSize(10, context))),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(10))),
                  height: 40,
                  child: Center(
                    child: Text(
                      '18:10',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 40,
                  color: Colors.blue,
                  child: Center(
                    child: Text(
                      '2 места',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(10))),
                  child: Center(
                    child: Text(
                      '15 сомони',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            height: screenAwareSize(50, context),
            child: Center(
              child: Text(
                'Куляб --- Душанба',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 30.0,
              child: ClipOval(
                child: Image.network(this.user.photo_url),
              ),
            ),
            title: Text(
              this.user.fullname,
            ),
            subtitle: Row(
              children: <Widget>[
                Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Text(this.user.rating.toString())
              ],
            ),
            trailing: Container(
                child: Text(
              this.user.car_name,
              textAlign: TextAlign.center,
            )),
          )
        ],
      ),
    );
  }
}
