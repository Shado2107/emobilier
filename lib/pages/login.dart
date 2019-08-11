import 'package:emobilier/database/Models/utilisateurs.dart';
import 'package:flutter/material.dart'; 
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; 
import 'package:emobilier/services/response/Login_reponse.dart';

class LoginPage extends StatefulWidget   { 
    static final String path = ""; 

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> implements LoginCallBack {

  BuildContext _ctx;
  bool _isLoading = false;
  final formKey = new GlobalKey<FormState>();
 
  String _email, _password;

  LoginResponse _response;

  _LoginPageState() {
    _response = new LoginResponse(this);
  }

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      setState(() {
        _isLoading = true;
        form.save();
        _response.doLogin(_email, _password);
      });
    }
  }

 
    @override Widget build(BuildContext context) { 
      _ctx = context;
        return Scaffold( 
            body: SingleChildScrollView( 
                child: Column( 
                  
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: <Widget>[ 
                        const SizedBox(height: 100.0), 
                        Stack( children: <Widget>[ 
                            Positioned( left: 20.0, top: 15.0, 
                            child: Container( 
                                decoration: BoxDecoration( 
                                    color: Colors.yellow, 
                                    borderRadius: BorderRadius.circular(20.0) ), 
                                    width: 70.0, height: 20.0, ), ), 
                                    Padding( padding: const EdgeInsets.only(left: 32.0), 
                                    child: Text( "Connectez-vous", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold), 
                                    ), 
                                    ), 
                                    ], 
                                    ), 
                                    const SizedBox(height: 30.0), 
                                    Padding( padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8.0), 
                                    child: TextField( 
                                      decoration: InputDecoration( 
                                        labelText: "Email", 
                                        hasFloatingPlaceholder: true), 
                                    ), 
                                    ), 
                                    Padding( padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8.0), 
                                    child: TextField( 
                                        obscureText: true, 
                                        decoration: InputDecoration( 
                                          labelText: "Mot de passe", 
                                        hasFloatingPlaceholder: true), 
                                        ), 
                                        ), 
                                        Container( 
                                          padding: const EdgeInsets.only(right: 16.0), 
                                        alignment: Alignment.centerRight, 
                                        child: Text("Mot de passe oublié?"),
                    
                                        ), 
                                        const SizedBox(height: 90.0), 
                                        Align( 
                                          alignment: Alignment.centerRight, 
                                        child: RaisedButton( padding: const EdgeInsets.fromLTRB(40.0, 16.0, 30.0, 16.0), 
                                        color: Colors.yellow, 
                                        elevation: 0, 
                                        shape: RoundedRectangleBorder( 
                                            borderRadius: BorderRadius.only( topLeft: Radius.circular(30.0), 
                                        bottomLeft: Radius.circular(30.0))
                                        ), 
                                        onPressed: () {
                                           Navigator.of(context).pushNamed("/AcceuilPromoteur");
                                          // Navigator.push(context,MaterialPageRoute(builder: (context)=> AccueilPromoteur() ));
                                        }, 
                                        child: Row( 
                                          
                                          mainAxisSize: MainAxisSize.min, 
                                        children: <Widget>[ 
                                          
                                          Text( "Se connecter".toUpperCase(), 
                                        style: TextStyle( fontWeight: FontWeight.bold, fontSize: 16.0), 
                                        ), 
                                        const SizedBox(width: 40.0), 
                                        Icon( FontAwesomeIcons.arrowRight, size: 18.0, ) ], 
                                        ), 
                                        ), 
                                        ),
                                        const SizedBox(height: 10.0), 
                                         Align( 
                                          alignment: Alignment.centerRight, 
                                        child: RaisedButton( padding: const EdgeInsets.fromLTRB(40.0, 16.0, 30.0, 16.0), 
                                        color: Colors.yellow, 
                                        elevation: 0, 
                                        shape: RoundedRectangleBorder( 
                                            borderRadius: BorderRadius.only( topLeft: Radius.circular(30.0), 
                                        bottomLeft: Radius.circular(30.0))
                                        ), 
                                        onPressed: 
                                        () {
                                          // Navigator.of(context).pushNamed("/Signup");
                                          // Navigator.push(context,MaterialPageRoute(builder: (context)=> SignupPage() ));

                                        }, 
                                        child: Row( 
                                          mainAxisSize: MainAxisSize.min, 
                                        children: <Widget>[ 
                                          Text( "Creer un compte".toUpperCase(), 
                                        style: TextStyle( fontWeight: FontWeight.bold, fontSize: 13.0), 
                                        ), 
                                        const SizedBox(width: 40.0), 
                                        Icon( FontAwesomeIcons.arrowRight, size: 18.0, ) ], 
                                        ), 
                                        ), 
                                        ), 
                                        const SizedBox(height: 50.0), 
                                        Row( 
                                          mainAxisAlignment: MainAxisAlignment.center, 
                                        children: <Widget>[ OutlineButton.icon( 
                                            padding: const EdgeInsets.symmetric(
                                               vertical: 8.0, horizontal: 30.0, ), 
                                            shape: RoundedRectangleBorder( 
                                              borderRadius: BorderRadius.circular(20.0)), 
                                            borderSide: BorderSide(color: Colors.red), 
                                            color: Colors.red, highlightedBorderColor: Colors.red, 
                                            textColor: Colors.red, 
                                            icon: Icon( FontAwesomeIcons.googlePlusG, size: 18.0, ), 
                                            label: Text("Google"), 
                                            onPressed: () {}, ), 
                                            const SizedBox(width: 10.0),
                                        
                                            OutlineButton.icon( 
                                              padding: const EdgeInsets.symmetric( 
                                              vertical: 8.0,
                                               horizontal: 30.0, ), 
                                            shape: RoundedRectangleBorder(
                                               borderRadius: BorderRadius.circular(20.0)), 
                                            highlightedBorderColor: Colors.indigo, 
                                            borderSide: BorderSide(color: Colors.indigo), 
                                            color: Colors.indigo, 
                                            textColor: Colors.indigo, 
                                            icon: Icon(
                                               FontAwesomeIcons.facebookF, size: 18.0, ), 
                                            label: Text("Facebook"), 
                                            onPressed: () {}, 
                                            ), 
                                            ], 
                                            ) ], 
                                            ), 
                                            ), 
                                            ); 
                                            } 

                                            
@override
  void onLoginError(String error) {
    // TODO: implement onLoginError
    print(error);
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void onLoginSuccess(Utilisateurs user) async {    

    if(user != null){
       Navigator.of(context).pushNamed("/AcceuilPromoteur");
    }else{
      // TODO: implement onLoginSuccess
    print("Login Gagal, Silahkan Periksa Login Anda");
    setState(() {
      _isLoading = false;
    });
    }
    
  }


}
