import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_amp/routes/app_pages.dart';
import 'package:login_amp/routes/routes.dart';

import 'Global/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login Demo',
      theme: appTheme(),
      getPages: AppPages.pages,
      initialRoute: Routes.LOGIN,
    );
  }
}
