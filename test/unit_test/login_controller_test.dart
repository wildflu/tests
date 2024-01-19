

import 'package:flutter_test/flutter_test.dart';
import 'package:unittest/controller/login_controller.dart';
import 'package:unittest/model/user.dart';

void main(){
  group("login controller test", () {
    test("test if the register function works", () {
      LoginController loginController = LoginController();
      User user = User(userName: "wildflu", email: "waildFlu@gmail.com");

      bool loginres = loginController.register(user);

      expect(loginController.loginUsers.length, 1);
      expect(loginres, true);
      expect(loginController.loginUsers, contains(user));
    });

    test("check the list linght", () {
      LoginController loginController = LoginController();
      expect(loginController.loginUsers.length, 0);
    });

    test("test log out function", () {
      LoginController loginController = LoginController();
      User user = User(userName: "wildflu", email: "waildFlu@gmail.com");
      loginController.loginUsers.add(user);

      loginController.logOut(user);

      expect(loginController.loginUsers.length, 0);
      expect(loginController.loginUsers, isNot(contains(user)));

    });
  });
}