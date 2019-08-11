import 'package:emobilier/services/request/Login_request.dart';
import 'package:emobilier/database/Models/utilisateurs.dart';

abstract class LoginCallBack {
  void onLoginSuccess(Utilisateurs user);
  void onLoginError(String error);
}

class LoginResponse {
  LoginCallBack _callBack;
  LoginRequest loginRequest = new LoginRequest();
  LoginResponse(this._callBack);

  doLogin(String email, String password) {
    loginRequest
        .getLogin(email, password)
        .then((user) => _callBack.onLoginSuccess(user))
        .catchError((onError) => _callBack.onLoginError(onError.toString()));
  } 
}