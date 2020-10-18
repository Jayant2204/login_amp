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

  final min8CharCheck = false.obs;
  final capitalLetterCheck = false.obs;
  final lowerLetterCheck = false.obs;
  final containsNumber = false.obs;
  final isEqual = false.obs;
  final canFinishSignup = false.obs;

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
      // Calls the listner for page 4 password Check
      validator();
    }
  }

  ///Validator to check password vaidation conditions.
  validator() {
    passwordController.addListener(() {
      if (passwordController.text.length >= 8) {
        min8CharCheck.value = true;
      } else {
        min8CharCheck.value = false;
      }
      if (passwordController.text.contains(new RegExp(r'[A-Z]'))) {
        capitalLetterCheck.value = true;
      } else {
        capitalLetterCheck.value = false;
      }
      if (passwordController.text.contains(new RegExp(r'[a-z]'))) {
        lowerLetterCheck.value = true;
      } else {
        lowerLetterCheck.value = false;
      }
      if (passwordController.text.contains(new RegExp(r'[0-9]'))) {
        containsNumber.value = true;
      } else {
        containsNumber.value = false;
      }
    });

    confirmPasswordController.addListener(() {
      if (confirmPasswordController.text != null &&
          confirmPasswordController.text == passwordController.text) {
        isEqual.value = true;
      } else {
        isEqual.value = false;
      }
    });
  }

  bool canContinueCheck() {
    if (min8CharCheck.value &&
        capitalLetterCheck.value &&
        lowerLetterCheck.value &&
        containsNumber.value &&
        isEqual.value) {
      return true;
    } else {
      return false;
    }
  }

  validattePasswordContinue() {
    if (min8CharCheck.value &&
        capitalLetterCheck.value &&
        lowerLetterCheck.value &&
        containsNumber.value &&
        isEqual.value) {
      Get.back();
      Get.back();
    }
  }
}
