import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:emobilier/database/Models/offres.dart';
import 'package:emobilier/database/Models/utilisateurs.dart';

class Emobilierdb {
  
  static Database _database;


Future<Database> get database async {

    if(_database != null)
      {
        return _database ;
      }
      else {
      /***creer la base de donner****/
      _database = await create() ;
      return _database ;
    }
  }

 Future create() async {
      Directory directory = await getApplicationDocumentsDirectory();
      String database_directory = join(directory.path,'emobilierdb.db');
      var bdd = await openDatabase(database_directory, version: 1, onCreate: _onCreate) ;
      return bdd;
    }


Future _onCreate(Database db, int version) async {
    /****on cree la table offres***/
    await db.execute('''
    CREATE TABLE offes 
    (id INTEGER PRIMARY KEY, 
    nom_offres TEXT NOT NULL,
    type TEXT,
    ville TEXT,
    quartier TEXT,
    description TEXT,
    prix TEXT,
    date_enreg TEXT,
    active TEXT,
    active_admin TEXT,
    image TEXT,
    )
    ''') ;

    await db.execute('''
    CREATE TABLE utilisateurs 
    (id INTEGER PRIMARY KEY, 
    nom TEXT NOT NULL,
    prenom TEXT ,
    adresse TEXT,
    telephone TEXT,
    mail TEXT,
    profil TEXT,
    image TEXT
    )
    ''') ;


    }



}