import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_amp/Global/config.dart';
import 'package:login_amp/app/auth/signup/widgets/passwordCriteria.dart';

import '../signupController.dart';

class SignupPasswordWidget extends StatelessWidget {
  final SignupController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          color: Constants.kwhite,
          child: Obx(
            () => Form(
              key: controller.signUpPasswordKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    "Choose a password",
                    style: theme.accentTextTheme.bodyText2
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: controller.passwordController,
                    style: theme.accentTextTheme.bodyText2,
                    // obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Constants.kgrey.withOpacity(0.12),
                      hintText: "Password",
                      hintStyle: theme.primaryTextTheme.bodyText2,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: controller.confirmPasswordController,
                    style: theme.accentTextTheme.bodyText2,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Constants.kgrey.withOpacity(0.12),
                      hintText: "Confirm password",
                      hintStyle: theme.primaryTextTheme.bodyText2,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 40),
                  PasswordCriteriaWidget(
                    label: "Minimum of 8 characters",
                    isValid: controller.min8CharCheck.value,
                  ),
                  PasswordCriteriaWidget(
                    label: "A capital letter",
                    isValid: controller.capitalLetterCheck.value,
                  ),
                  PasswordCriteriaWidget(
                    label: "A Lowercase letter",
                    isValid: controller.lowerLetterCheck.value,
                  ),
                  PasswordCriteriaWidget(
                    label: "A number",
                    isValid: controller.containsNumber.value,
                  ),
                  PasswordCriteriaWidget(
                    label: "Both boxes match",
                    isValid: controller.isEqual.value,
                  ),
                  Spacer(),
                  Center(
                    child: RaisedButton(
                      onPressed: controller.canContinueCheck()
                          ? () {
                              Get.back();
                              Get.back();
                            }
                          : null,
                      elevation: 0,
                      color: Constants.kyellow,
                      disabledColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Container(
                        width: 325,
                        height: 42,
                        alignment: Alignment.center,
                        child: Text(
                          "CONTINUE",
                          style: theme.accentTextTheme.subtitle1.copyWith(
                              fontWeight: FontWeight.bold, letterSpacing: 1.25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
