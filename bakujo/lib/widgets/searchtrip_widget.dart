import 'package:bakujo/commons/utils.dart';
import 'package:bakujo/theme/styles.dart';
import 'package:flutter/material.dart';

class SearchTripWidget extends StatefulWidget {

  @override
  _SearchTripWidgetState createState() => _SearchTripWidgetState();
}

class _SearchTripWidgetState extends State<SearchTripWidget> {
  
  var fromTextController = new TextEditingController();
  var toTextController = new TextEditingController();

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
          borderRadius: BorderRadius.circular(screenAwareSize(10, context))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextField(
            controller: fromTextController,
            focusNode: FocusNode(),
            decoration: searchTextFieldDecoration(
                'От', 'пример: Куляб', Icons.location_city),
              onTap: () {
                Navigator.pushNamed(context, '/search').then((val){
                  setState(() {
                    fromTextController.text = val;
                  });
                });
              },
          ),
          TextField(
            controller: toTextController,
            focusNode: FocusNode(),
            decoration: searchTextFieldDecoration(
                'До', 'пример: Душанбе', Icons.location_searching),
                onTap: () {
                Navigator.pushNamed(context, '/search').then((val){
                  setState(() {
                    toTextController.text = val;
                  });
                });
              }
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