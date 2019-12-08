import 'package:bakujo/models/user.dart';
import 'package:bakujo/theme/styles.dart';
import 'package:carousel_slider/carousel_slider.dart';
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  _profileColumn(),
                  SizedBox(
                    width: 30,
                  ),
                  _detailTrip()
                ],
              ),
            ),
            preferredSize: Size.fromHeight(130),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                'Descripton Text Descripton TextDescripton TextDescripton Text Descripton Text Descripton Text Descripton Text Descripton Text',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Фото автомобиля',
                style: regularTextStyle(Colors.black, 20),
              ),
            ),
            CarouselSlider(
              height: 200.0,
              items: [1, 2, 3].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Image.network(
                        "https://cdn.somon.tj/cache/fa/37/fa37def2d3109c00c3e30f558f62dd62.jpg",
                      ),
                    );
                  },
                );
              }).toList(),
            )
          ],
        ));
  }

  Column _detailTrip() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              Icons.attach_money,
              color: Colors.white,
            ),
            Text('15 somoni', style: regularTextStyle(Colors.white, 20))
          ],
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.access_time,
              color: Colors.white,
            ),
            Text('18:10', style: regularTextStyle(Colors.white, 20))
          ],
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.event_seat,
              color: Colors.white,
            ),
            Text('2 места', style: regularTextStyle(Colors.white, 20))
          ],
        )
      ],
    );
  }

  Column _profileColumn() {
    return Column(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40.0,
          child: ClipOval(
            child: Image.network(this.user.photo_url),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          this.user.fullname,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
