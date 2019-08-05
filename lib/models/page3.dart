import 'package:flutter/material.dart';

class ComptePage extends StatelessWidget {
  static final String path = "";
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        // backgroundColor: Colors.deepOrange,
       
        body: ListView(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  stops: [0.5, 0.9],
                  colors: [
                    Colors.blue,
                    Colors.blue.shade300
                  ]
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(Icons.call, size: 30.0,),
                        minRadius: 30.0,
                        backgroundColor: Colors.grey.shade600,),
                      CircleAvatar(
                        minRadius: 60,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/room1.jpg'),
                          minRadius: 50,

                        ),
                      ),
                      CircleAvatar(
                        child: Icon(Icons.message, size: 30.0,),
                        minRadius: 30.0,
                        backgroundColor: Colors.grey.shade600,),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("Ram Kumar", style: TextStyle(fontSize: 22.0, color: Colors.white),),
                  Text("Kathmandu, Nepal", style: TextStyle(fontSize: 14.0, color: Colors.white),)
                ],
              ),
            ),
            
            ListTile(
              title: Text("Email", style: TextStyle(color: Colors.blue, fontSize: 12.0),),
              subtitle: Text("pd39almeida.outlook.com", style: TextStyle(fontSize: 18.0),),
            ),
            Divider(),
            ListTile(
              title: Text("Telephone", style: TextStyle(color: Colors.blue, fontSize: 12.0),),
              subtitle: Text("+228 93962550", style: TextStyle(fontSize: 18.0),),
            ),
            Divider(),
            ListTile(
              title: Text("Twitter", style: TextStyle(color: Colors.blue, fontSize: 12.0),),
              subtitle: Text("@mysticpavel", style: TextStyle(fontSize: 18.0),),
            ),
            Divider(),
            ListTile(
              title: Text("Facebook", style: TextStyle(color: Colors.blue, fontSize: 12.0),),
              subtitle: Text("pavel romano almeida ", style: TextStyle(fontSize: 18.0),),
            ),
            Divider(),
          ],
        ),
      );
    }
}