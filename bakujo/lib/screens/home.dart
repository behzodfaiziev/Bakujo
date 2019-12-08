import 'package:bakujo/commons/utils.dart';
import 'package:bakujo/screens/addtrip.dart';
import 'package:bakujo/screens/mytrip.dart';
import 'package:bakujo/screens/searchpage.dart';
import 'package:bakujo/services/auth_state.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  var tabBarIndex = 0;
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> pages = [
    SearchPage(key: PageStorageKey('Search')),
    MyTrip(key: PageStorageKey('MyTrip')),
    AddTrip(
      key: PageStorageKey('AddTrip'),
    )
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: widget.tabBarIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Поиск')),
          BottomNavigationBarItem(
              icon: Icon(Icons.drive_eta), title: Text('Мои поездки')),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle), title: Text('Добавить поездку'))
        ],
        onTap: (index) {
          setState(() {
            this.widget.tabBarIndex = index;
          });
        },
      ),
      body: PageStorage(
        child: pages[widget.tabBarIndex],
        bucket: bucket,
      ),
    );
  }
}
