import 'package:flutter/material.dart';
import 'package:emobilier/pages/home_page.dart';
import 'package:emobilier/pages/accueil_promoteur.dart';
import 'package:emobilier/pages/user_register.dart';
import 'package:emobilier/pages/login.dart';



void main() => runApp(MyApp());

final routes = {
  '/login': (BuildContext context) => new LoginPage(),
  '/home': (BuildContext context) => new HomePage(),
  '/Signup': (BuildContext context) => new SignupPage(),
  '/AcceuilPromoteur': (BuildContext context) => new AccueilPromoteur(),

};

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.amber,
        primaryColor: Colors.cyan,
        iconTheme: IconThemeData(
          color: Colors.redAccent,
        ),
      ),
      routes: routes,
      home: HomePage(),
    );
  }
}
