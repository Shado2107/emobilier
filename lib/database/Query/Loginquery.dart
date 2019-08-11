import 'package:emobilier/database/Models/utilisateurs.dart';
import 'dart:async';
import 'package:emobilier/database/emobilierdb.dart';

class LoginCtr {
DatabaseHelper con = new DatabaseHelper();

//insertion
  Future<int> saveUser(Utilisateurs user) async {
    var dbClient = await con.db;
    int res = await dbClient.insert("User", user.toMap());
    return res;
  }

  //deletion
  Future<int> deleteUser(Utilisateurs user) async {
    var dbClient = await con.db;
    int res = await dbClient.delete("User");
    return res;
  }

  Future<Utilisateurs> getLogin(String user, String password) async {
    var dbClient = await con.db;
    var res = await dbClient.rawQuery("SELECT * FROM user WHERE username = '$user' and password = '$password'");
    
    if (res.length > 0) {
      return new Utilisateurs.fromMap(res.first);
    }

    return null;
  }

  Future<List<Utilisateurs>> getAllUser() async {
    var dbClient = await con.db;
    var res = await dbClient.query("user");
    
    List<Utilisateurs> list =
        res.isNotEmpty ? res.map((c) => Utilisateurs.fromMap(c)).toList() : null;

    return list;
  }
}