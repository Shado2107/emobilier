
import 'package:emobilier/database/Models/utilisateurs.dart';
import 'package:emobilier/database/emobilierdb.dart';
import 'package:emobilier/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupPage extends StatelessWidget {
  static final String path = "";
  String image;
  String nom ;
  String magasin;
  String prix ;

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 80.0),
            Stack(
              children: <Widget>[
                Positioned(
                  left: 20.0,
                  top: 15.0,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(20.0)),
                    width: 70.0,
                    height: 20.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32.0),
                  child: Text(
                    "Inscription",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 8.0),
              child: TextField(
               
                decoration: InputDecoration(
                    labelText: "Email", hasFloatingPlaceholder: true),
                    controller: email,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Mot de passe", hasFloatingPlaceholder: true),
                    controller: password,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 8.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Confirmer mot de passe",
                    hasFloatingPlaceholder: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text.rich(
                TextSpan(children: [
                  TextSpan(
                      text: "En vous inscrivant, vous acceptez "),
                  TextSpan(
                      text: "les termes et les conditions",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.indigo)),
                  TextSpan(text: " d'utilisation de l'application."),
                ]),
              ),
            ),
            const SizedBox(height: 60.0),
            Align(
              alignment: Alignment.centerRight,
              child: RaisedButton(
                padding: const EdgeInsets.fromLTRB(40.0, 16.0, 30.0, 16.0),
                color: Colors.yellow,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        bottomLeft: Radius.circular(30.0))),
                onPressed: () {
                   Navigator.push(context,MaterialPageRoute(builder: (context)=> LoginPage() ));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      "S'inscrire".toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    const SizedBox(width: 40.0),
                    Icon(
                      FontAwesomeIcons.arrowRight,
                      size: 18.0,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton.icon(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 30.0,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  borderSide: BorderSide(color: Colors.red),
                  color: Colors.red,
                  highlightedBorderColor: Colors.red,
                  textColor: Colors.red,
                  icon: Icon(
                    FontAwesomeIcons.googlePlusG,
                    size: 18.0,
                  ),
                  label: Text("Google"),
                  onPressed: () {},
                ),
                const SizedBox(width: 10.0),
                OutlineButton.icon(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 30.0,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  highlightedBorderColor: Colors.indigo,
                  borderSide: BorderSide(color: Colors.indigo),
                  color: Colors.indigo,
                  textColor: Colors.indigo,
                  icon: Icon(
                    FontAwesomeIcons.facebookF,
                    size: 18.0,
                  ),
                  label: Text("Facebook"),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }


//  void ajouter ()
//   {
//     if(email != null)
//       {
//         Map<String, dynamic> map = { 'nom': nom , 'item': widget.id } ;
//         if(magasin != null)
//         {
//           map['magasin'] = magasin;
//         }
//         if(prix != null)
//         {
//           map['prix'] = prix;
//         }
//         if(image != null)
//         {
//           map['image'] = image;
//         }

//        Utilisateurs article = new Utilisateurs() ;
//         article.fromMap(map);
//         DatabaseHelper().saveuser(article).then((value) {
//           /**********on remet a null tous les donnees************/
//            image = null;
//            nom =  null;
//            magasin = null;
//            prix = null;
//            Navigator.pop(context);
//         }) ;
//       }
//   }



}