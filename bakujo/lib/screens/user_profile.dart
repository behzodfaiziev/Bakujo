import 'package:bakujo/theme/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  UserProfile({Key key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();
  VoidCallback _showBottomSheetCallback;

  @override
  void initState() {
    super.initState();
    _showBottomSheetCallback = _showEditProfile;
  }

  void _showEditProfile() {
    var nameController = TextEditingController();
    var surnameController = TextEditingController();
    var birthController = TextEditingController();

    setState(() {
      // disable the button
      _showBottomSheetCallback = null;

      nameController.text = "Aminjoni";
      surnameController.text = "Abdullozoda";
      birthController.text = "03/02/1996";
    });
    _scaffoldKey.currentState
        .showBottomSheet<void>((BuildContext context) {
          return Container(
            height: MediaQuery.of(context).size.height - 110,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, spreadRadius: 0.1, blurRadius: 0.5)
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            ),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      //Todo: upload new image
                    },
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://avatars3.githubusercontent.com/u/30694948?s=460&v=4'),
                    ),
                  ),
                  TextField(
                    controller: nameController,
                    decoration:
                        hamrohTextFieldDecoration("Имя", "Изменить ваше имя"),
                  ),
                  TextField(
                    controller: surnameController,
                    decoration: hamrohTextFieldDecoration(
                        "Фамилия", "Измените свою фамилию"),
                  ),
                  TextField(
                    controller: birthController,
                    decoration: hamrohTextFieldDecoration(
                        "День рождения", "Изменить свой день рождения"),
                  ),
                  RaisedButton(
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      'Сохранить',
                      style: regularTextStyle(Colors.white, 15),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          );
        })
        .closed
        .whenComplete(() {
          if (mounted) {
            setState(() {
              // re-enable the button
              _showBottomSheetCallback = _showEditProfile;
            });
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Профиль'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: ListTile.divideTiles(context: context, tiles: [
            GestureDetector(
              onTap: _showBottomSheetCallback,
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://avatars3.githubusercontent.com/u/30694948?s=460&v=4'),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name Surname',
                        style: regularTextStyle(Colors.black87, 20),
                      ),
                      Text(
                        'Просмотр и редактирование профиля',
                        style: regularTextStyle(Colors.green, 13),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                  )
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.help,
                size: 22,
              ),
              title: Text('Вопросы-Ответы'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(
                Icons.local_post_office,
                size: 22,
              ),
              title: Text('Получить помощь'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Icon(
                Icons.feedback,
                size: 22,
              ),
              title: Text('Оставьте отзыв'),
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              leading: Text('Версия'),
              trailing: Text('beta 1.0'),
            )
          ]).toList(),
        ),
      ),
    );
  }
}

//

// Center(
//           child: RaisedButton(
//             child: Text('Sign out'),
//             onPressed: () {
//               FirebaseAuth.instance.signOut().then((_) {
//                 Navigator.of(context).pushReplacementNamed('/');
//               });
//             },
//           ),
//         )
