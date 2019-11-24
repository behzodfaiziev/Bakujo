
import 'package:bakujo/commons/utils.dart';
import 'package:bakujo/theme/styles.dart';
import 'package:flutter/material.dart';

class SearchTripWidget extends StatelessWidget {
  const SearchTripWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: screenAwareSize(20, context),
          vertical: screenAwareSize(20, context)),
      padding: EdgeInsets.all(screenAwareSize(20, context)),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [hamrohCardShadow()],
          borderRadius:
          BorderRadius.circular(screenAwareSize(10, context))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            decoration: searchTextFieldDecoration(
                'От', 'пример: Куляб', Icons.location_city),
          ),
          TextField(
            decoration: searchTextFieldDecoration(
                'До', 'пример: Душанбе', Icons.location_searching),
          ),
          FlatButton(
            highlightColor: Colors.white,
            child: Text('Поиск'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}