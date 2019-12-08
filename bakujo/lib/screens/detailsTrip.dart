import 'package:bakujo/models/user.dart';
import 'package:bakujo/theme/styles.dart';
import 'package:flutter/material.dart';

class DetailsTrip extends StatelessWidget {
  final User user;

  const DetailsTrip({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.call),
        onPressed: () {},
      ),
      appBar: AppBar(
        actions: <Widget>[
          hamroh_rating_Widget(this.user.rating.toString()),
          SizedBox(
            width: 10,
          )
        ],
        title: Text('Kulob - Dushanbe'),
        elevation: 0,
        bottom: PreferredSize(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 50.0,
                child: ClipOval(
                  child: Image.network(this.user.photo_url),
                ),
              ),
              Text(
                this.user.fullname,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
          preferredSize: Size.fromHeight(130),
        ),
      ),
    );
  }
}
