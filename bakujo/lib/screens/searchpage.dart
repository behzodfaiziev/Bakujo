import 'package:bakujo/commons/utils.dart';
import 'package:bakujo/models/user.dart';
import 'package:bakujo/widgets/resultTrip_widget.dart';
import 'package:bakujo/widgets/searchtrip_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Вы ищете поездку?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: Icon(Icons.account_circle),
                  iconSize: screenAwareSize(40, context),
                  onPressed: () {
                    Navigator.pushNamed(context, '/userProfile');
                  },
                )
              ],
            ),
          ),
          SearchTripWidget(),
          SizedBox(
            height: 10,
          ),
          Text('5 поездок найдено\n',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
      
          // ListView.builder()
        ],
      ),
    );
  }
}

// ResultTripWidget(new User(
//     id: '1',
//     fullname: 'SaidMuzafar',
//     photo_url:
//         'https://scontent.ffod1-1.fna.fbcdn.net/v/t1.0-9/71556443_2514190062012044_6800151028890075136_n.jpg?_nc_cat=108&_nc_ohc=wlCafB5A1o8AQkkAd8GGj5pZMEi-AvPD_zKILEs9Xa_PfMuGWLJuk9wXA&_nc_ht=scontent.ffod1-1.fna&oh=1ff70425c15f6a9003d4098b262e983e&oe=5E44A6F6',
//     car_name: 'BMW M3 \n 2019',
//     rating: 4.9)),
// ResultTripWidget(new User(
//     id: '1',
//     fullname: 'Shodmon R',
//     photo_url:
//         'https://scontent.ffod1-1.fna.fbcdn.net/v/t1.0-9/11535865_490820697753625_3928301572826126126_n.jpg?_nc_cat=102&_nc_ohc=qAa3a3-TkEMAQlj5PxJZRG0OjcC5sszz_zvsgUg0dspOLWFIZhqIE74NA&_nc_ht=scontent.ffod1-1.fna&oh=cfb57d7aa72d7bcb981d4a6294ad7594&oe=5E4E8B41',
//     car_name: 'Open Astra \n 2019',
//     rating: 3.1))
