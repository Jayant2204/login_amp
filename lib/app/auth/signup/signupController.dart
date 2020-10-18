import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'signupPasswordPage.dart';

class SignupController extends GetxController {
  final signUpFormKey = GlobalKey<FormState>();
  final signUpPasswordKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  final genderType = 0.obs;
  final trainingType = 0.obs;

  selectGender(int index) {
    genderType.value = index;
  }

  selectedTraining(index) {
    trainingType.value = index;
  }

  validate() {
    if (signUpFormKey.currentState.validate()) {
      signUpFormKey.currentState.save();
      Get.to(SignupPasswordPage());
    }
  }
}
