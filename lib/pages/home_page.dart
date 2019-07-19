
import 'dart:convert';

import "package:flutter/material.dart";
import 'package:http/http.dart' as http;
import 'accueil_promoteur.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  
  bool _showPass = false;
  TextEditingController _usercontroller =  new TextEditingController();
  TextEditingController _passcontroller =  new TextEditingController();
  var _usernameErr = "please insert username";
  var _passErr = "please insert password";
  var _usernameInvalid = false;
  var _passInvalid = false;
  
  /*Future<List> getData() async {
    final Response=await http.get("http://127.0.0.1:80/fortitude_shop/connect.php");
    return json.decode(Response.body);
  }*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
      child: Center(
        child: Container(
           color: Colors.white,
     // resizeToAvoidBottomPadding: false,
    child: Padding(
        padding: const EdgeInsets.all(36.0),
      //  constraints: BoxConstraints.expand(),   
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Text("Bienvenue\ndans E-Mobilier ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 30
              ),),
            ) ,
             Padding(
               padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
               child: TextField(
                 style: TextStyle(fontSize: 18, color: Colors.black),
                 controller: _usercontroller,
                 decoration: InputDecoration(
                   labelText: "Nom d'utilisateur",
                   errorText: _usernameInvalid ? _usernameErr : null ,
                   labelStyle: TextStyle(color: Color(0xff8888888),
                   fontSize: 15)
                 ),
               ),
             ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: Stack(
                   alignment: AlignmentDirectional.centerEnd,
                   children: <Widget>[              
                    TextField(
                     style: TextStyle(fontSize: 18, color: Colors.black),
                     controller: _passcontroller,
                     obscureText: !_showPass,
                     decoration: InputDecoration(
                       labelText: "Mot de passe",
                       errorText: _passInvalid ? _passErr : null,
                       labelStyle: TextStyle(color: Color(0xff8888888),
                       fontSize: 15)
                     ),
               ),          
           GestureDetector(
             onTap: onToggleShowPass,
               child: Text(
                 _showPass ? "Cacher":"Voir",
               style: TextStyle(color: Colors.blue, fontSize: 13, fontWeight: FontWeight.bold),
               ),
             )
                   ], 
                  ),
                ), 
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: RaisedButton(
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))
                    ),
                    onPressed: onSignInClicked,
                    child: Text("Se connecter",style: TextStyle(color: Colors.white,fontSize: 16),),
                  ),
                ),
              ),
              Container(
                  height: 120,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                    Text("NOUVEAU? CREER COMPTE",style: TextStyle(
                      fontSize: 12, color: Color(0xff888888) 
                    ),),
                    Text("MOT DE PASSE OUBLIE",
                    style: TextStyle(fontSize: 12, color: Colors.blue),)
                  ],),
                ),
             
            ],
        ),
      ),
      )
      )
     )
    );
  }


  void onToggleShowPass(){
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onSignInClicked(){
     setState(() {
        if(_usercontroller.text.length <6 || _usercontroller.text.contains("0")){
          _usernameInvalid = true;
        }else{
          _usernameInvalid = false;
        }

        if(_passcontroller.text.length <6){
          _passInvalid = true;
        }else{
          _passInvalid = false;
        }

        if(!_usernameInvalid && !_passInvalid){
         // Navigator.push(context, MaterialPageRoute(builder: gotoHome ))
         Navigator.push(context, MaterialPageRoute(builder: (context)=> AccueilPromoteur() ));
        
        }
     });
  }
Widget gotoHome(BuildContext context){
  return HomePage();
}

}