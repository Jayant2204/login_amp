import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_amp/Global/config.dart';

getAppBar() {
  return AppBar(
    backgroundColor: Constants.kblack,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () => Get.back(),
    ),
  );
}
