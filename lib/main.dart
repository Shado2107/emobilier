import 'package:flutter/material.dart';
import 'package:emobilier/pages/home_page.dart';


void main() =>
  runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.amber,
        primaryColor: Colors.pink,
        iconTheme: IconThemeData(
          color: Colors.redAccent,
        ),
      ),
      home: HomePage(),
    );
  }
}
