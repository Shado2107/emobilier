import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';


class PubRegisterPage extends StatefulWidget {
  @override
  _PubRegisterPageState createState() => _PubRegisterPageState();
}

class _PubRegisterPageState extends State<PubRegisterPage> {
 
TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

/*Future<void> _optionsDialogBox(){
  return showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(content: new SingleChildScrollView(child: new ListBody(
      children: <Widget>[
        GestureDetector(
          child: new Text("select from galery "),
          onTap: openGallery,
        ),
        Padding(padding: EdgeInsets.all(8.0),),
         GestureDetector(
          child: new Text("select from galery "),
          onTap: openCamera,
        ),
      ],
    ),),);
  });
}

openCamera() async{
var picture = await ImagePicker.pickImage(
  source: ImageSource.camera,
);
}

openGallery() async{
var gallery = await ImagePicker.pickImage(
  source: ImageSource.gallery,
); 
}*/



  @override
  Widget build(BuildContext context) {


Widget _offsetPopup() => PopupMenuButton<int>(
          itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "A propos",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                  
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Deconnexion",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
          icon: Icon(Icons.more_vert),
//          offset: Offset(0, 100),
        );
 
 final NameField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nom",
          labelText: "Nom",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );

    final PriceField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Prix",
          labelText: "Prix",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );

  final DescriptionField = TextField(
      style: style,
       keyboardType: TextInputType.multiline,
      maxLines: 6,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Description",
          labelText: "Description",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );

  final AdresseField = TextField(
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Adresse",
          labelText: "Adresse",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15.0))),
    );


    final SaveButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.green,
      child: MaterialButton(
        minWidth:10.0 ,//MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
        
        },
        child: Text("Enregistrer",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
 

   final CancelButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.redAccent,
      child: MaterialButton(
        minWidth: 10.0 , 
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
        
        },
        child: Text("Annuler",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
 

    return Scaffold(
     appBar: AppBar(
       title: new Text("Nouvelle publication"),
       actions: <Widget>[
          Container(
             // color: Colors.lightBlue,
              child: _offsetPopup(),
            ),
       ],
     ),
     body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               // SizedBox(height: 10.0),
                NameField,
                SizedBox(height: 15.0),
                PriceField,
                SizedBox(height: 15.0),
                AdresseField,
                SizedBox(height: 15.0),
                DescriptionField,
                SizedBox(height: 35.0,),
                  Container(
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                            SaveButton,
                            CancelButton
                         ],
                      ),
                  ),
                
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
        ),
    );
  }
}