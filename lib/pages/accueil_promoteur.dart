
import 'package:flutter/material.dart';
import 'package:emobilier/models/page1.dart';
import 'package:emobilier/models/page2.dart';
import 'package:emobilier/models/page3.dart';

import 'package:emobilier/utils/PopupMenu.dart';


class AccueilPromoteur extends StatefulWidget {
 
  @override
  _AccueilPromoteurState createState() => _AccueilPromoteurState();
}


List<CustomPopupMenu> choices = <CustomPopupMenu>[
  CustomPopupMenu(title: 'home',icon: Icons.home),
  CustomPopupMenu(title: 'bookmarks',icon: Icons.home),
  CustomPopupMenu(title: 'settings',icon: Icons.home),
];


class _AccueilPromoteurState extends State<AccueilPromoteur> {
 
/*Future<List> getData() async{
 
  final response= await http.get("http://localhost:80/fortitude_shop/get_data.php");
  //var data= 
  return json.decode(response.body);
  //print(data.toString());
  //return data;
  
}*/
CustomPopupMenu _selectedChoices = choices[0];
   void _select(CustomPopupMenu choice){
     setState(() {
      _selectedChoices = choice; 
     });
   }

int _currentINdex=0;
Widget callPage(int currentIndex){
  switch(currentIndex){
    case 0: return AccueilPage ();
    case 1: return PlublicationPage();
    case 2: return ComptePage();
      break;
    default: return  AccueilPage();

  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
    body: callPage(_currentINdex),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentINdex,
      onTap: (value){
        _currentINdex=value;
        setState(() {
          
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Accueil')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle),
          title: Text('Publications')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('Mon compte')
        ), 
            
      ],
    ),
    
    /*new FutureBuilder<List>(
      //future: getData(),
      builder: (context, snapshot){
        if(snapshot.hasError) print(snapshot.error);

        return snapshot.hasData 
        ? new ItemList()
        : new Center(child: new CircularProgressIndicator()  ,);
      },
    ),*/
    );
  }
}

/*class ItemList extends StatelessWidget {
 final List list;
 ItemList({this.list});
 
 @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: list==null ? 0 : list.length,
      itemBuilder: (context, i){
        return new Text(list[i]['Usersname']);
      },
    );
  }
}*/