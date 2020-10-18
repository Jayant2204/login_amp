import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_amp/Global/config.dart';

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
        child: Form(
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
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Constants.kgrey.withOpacity(0.12),
                  hintText: "Password",
                  hintStyle: theme.primaryTextTheme.bodyText2,
                ),
                validator: (data) {
                  return data.isEmail ? null : "Invalid Email address";
                },
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.onUserInteraction,
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
                validator: (data) {
                  return data.isEmail ? null : "Invalid Email address";
                },
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
