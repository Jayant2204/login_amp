import 'package:get/get.dart';
import 'package:login_amp/app/auth/login/loginpage.dart';
import 'package:login_amp/app/auth/login/selectorPage.dart';
import 'package:login_amp/app/auth/signup/signupPage.dart';

import '../routes/routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    ),
    GetPage(
      name: Routes.SIGNUP,
      page: () => SignupPage(),
    ),
    GetPage(
      name: Routes.AUTHSELECTION,
      page: () => SelectorPage(),
    ),
  ];
}
