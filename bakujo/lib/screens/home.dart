import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);
  var tabBarIndex = 0;
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {},
        ),
      ),
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
      body: Container(),
    );
  }
}
