import 'dart:async';

import 'package:emobilier/database/Models/utilisateurs.dart';
import 'package:emobilier/database/Query/Loginquery.dart';

class LoginRequest {
  LoginCtr con = new LoginCtr();

 Future<Utilisateurs> getLogin(String email, String password) {
    var result = con.getLogin(email,password);
    return result;
  }
}