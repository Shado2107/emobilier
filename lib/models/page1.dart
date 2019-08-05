import 'package:emobilier/pages/Pub_register.dart';
import 'package:flutter/material.dart';
import 'package:unicorndial/unicorndial.dart';
import 'package:emobilier/models/publist.dart';
import 'package:emobilier/pages/settingspage.dart';



class PlublicationPage extends StatefulWidget {
  @override
  _PlublicationPageState createState() => _PlublicationPageState();
}

class _PlublicationPageState extends State<PlublicationPage> {
  @override
  Widget build(BuildContext context) {

    var childButtons = List<UnicornButton>();

    childButtons.add(UnicornButton(
        hasLabel: true,
        labelText: "Faire une publication",
        currentButton: FloatingActionButton(
          heroTag: "faire une publication",
          backgroundColor: Colors.redAccent,
          mini: true,
          child: Icon(Icons.add, color: Colors.white,),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> PubRegisterPage() ));
          },
        )));

    childButtons.add(UnicornButton(
      hasLabel: true,
      labelText: "Mes publications",
        currentButton: FloatingActionButton(
            heroTag: "Mes publications",
            backgroundColor: Colors.green,
            mini: true,
            child: Icon(Icons.list, color: Colors.white,),
             onPressed: () {},
            )));

    childButtons.add(UnicornButton(
        hasLabel: true,
      labelText: "Parametres",
        currentButton: FloatingActionButton(
            heroTag: "parametres",
            backgroundColor: Colors.blueAccent,
            mini: true,
            child: Icon(Icons.settings, color: Colors.white,),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> SettingsPage() ));
            },
            )));


    return Scaffold(
         appBar: AppBar(
        title: Text("E-Mobilier"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.search),
          ),
         
        ],  
        ),


      floatingActionButton: UnicornDialer(
            backgroundColor: Color.fromRGBO(255, 255, 255, 0.6),
            parentButtonBackground: Colors.blue,
            orientation: UnicornOrientation.VERTICAL,
            parentButton: Icon(Icons.add,),
            childButtons: childButtons),
    body: Column(
       mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        // Expanded(flex: 1, child: new InstaStories()),
        Flexible(child: PubList())
      ],
      
    ),
       
     );
  }
}