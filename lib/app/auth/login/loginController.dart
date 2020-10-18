import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController logincontroller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final timeLeft = 0.obs;
  var abc = 0;

  onLogin() async {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();
      triggerTimer(resetForm: true);
    }
  }

  triggerTimer({bool resetForm = false}) {
    this.timeLeft.value = 5;
    Timer.periodic(Duration(seconds: 1), (timer) {
      this.timeLeft.value--;
      if (this.timeLeft.value <= 0) {
        timer.cancel();
        timeLeft.value = 0;
        if (resetForm) resetLoginForm();
      }
    });
  }

  resetLoginForm() {
    formKey.currentState.reset();
    logincontroller.clear();
    passwordController.clear();
  }
}
