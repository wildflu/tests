

import 'package:unittest/model/user.dart';

class LoginController {

  List<User> loginUsers = [];

  bool register(User user) {
    if(!loginUsers.contains(user)){
      loginUsers.add(user);
      return true;
    }
    return false;
  }

  void logOut(User user){
    loginUsers.remove(user);
  }

}