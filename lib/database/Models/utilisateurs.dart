class Utilisateurs {
  int _id;
  String _email;
  String _password;

  Utilisateurs(this._email, this._password);

  Utilisateurs.fromMap(dynamic obj) {
    this._email = obj['email'];
    this._password = obj['password'];
  }

  String get email => _email;
  String get password => _password;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["email"] = _email;
    map["password"] = _password;
    return map;
  }
}