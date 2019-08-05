import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:emobilier/pages/login.dart';

class HomePage extends StatelessWidget {
  static final String path = "";
  final pages = [
    PageViewModel(
      pageColor: Color(0xF6F6F7FF),
        bubbleBackgroundColor: Colors.indigo,
        title: Container(),
        body: Column(
          children: <Widget>[
            Text('Bienvenue dans Immo TOGO'),
            Text(
              'pour toutes vos besoin dans le secteur l immobilier au Togo .',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0
              ),
            ),
          ],
        ),
        mainImage: Image.asset(
          'assets/images/wallet1.png',
          width: 285.0,
          alignment: Alignment.center,
        ),
        textStyle: TextStyle(color: Colors.black),
    ),
    PageViewModel(
      pageColor: Color(0xF6F6F7FF),
        iconColor: null,
        bubbleBackgroundColor: Colors.indigo,
        title: Container(),
        body: Column(
          children: <Widget>[
            Text('Publiez vos offres'),
            Text(
              'Vous avez des propriétés a vendre ou à louer? Immo TOGO est le meilleur endroit.',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0
              ),
            ),
          ],
        ),
        mainImage: Image.asset(
          'assets/images/wallet2.png',
          width: 285.0,
          alignment: Alignment.center,
        ),
        textStyle: TextStyle(color: Colors.black),
    ),
    PageViewModel(
      pageColor: Color(0xF6F6F7FF),
        iconColor: null,
        bubbleBackgroundColor: Colors.indigo,
        title: Container(),
        body: Column(
          children: <Widget>[
            Text('Acheter et louer des propriétés'),
            Text(
              'En clic trouvez satisfaion pour tout vos besoin en immobilier.',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 16.0
              ),
            ),
          ],
        ),
        mainImage: Image.asset(
          'assets/images/wallet3.png',
          width: 285.0,
          alignment: Alignment.center,
        ),
        textStyle: TextStyle(color: Colors.black),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            IntroViewsFlutter(
              pages,
              onTapDoneButton: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginPage() ));
              },
              showSkipButton: false,
              doneText: Text("Commencer",),
              pageButtonsColor: Colors.indigo,
              pageButtonTextStyles: new TextStyle(
                  // color: Colors.indigo,
                  fontSize: 16.0,
                  fontFamily: "Regular",
              ),
            ),
            Positioned(
              top: 20.0,
              left: MediaQuery.of(context).size.width/2 - 50,
              child: Image.asset('assets/images/logo.png', width: 100,)
            )
          ],
        ),
      ),
    );
  }
}