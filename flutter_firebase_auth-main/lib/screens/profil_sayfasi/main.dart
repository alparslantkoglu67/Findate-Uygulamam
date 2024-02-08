import 'package:flutter/material.dart';
import '././pages/profile_page.dart';
import 'package:flutter/services.dart';

class Profil_Page extends StatefulWidget {
  @override
  _Profil_PageState createState() => _Profil_PageState();
}

class _Profil_PageState extends State<Profil_Page> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kullanıcı Profili',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          fontFamily: 'Roboto',
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shadowColor: Colors.grey,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0.0))))),
          inputDecorationTheme: InputDecorationTheme(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(0.0))),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              alignment: Alignment.centerLeft,
              primary: Colors.black,
            ),
          )),
      home: ProfilePage(),
    );
  }
}
