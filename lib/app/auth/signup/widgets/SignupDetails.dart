import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_amp/Global/config.dart';

import '../signupController.dart';
import 'genderRadioButton.dart';

class SignupDetailsWidget extends StatelessWidget {
  final SignupController controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Obx(
        () => Container(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          color: Constants.kwhite,
          child: Form(
            key: controller.signUpFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 20),
                Text(
                  "Whats your email address?",
                  style: theme.accentTextTheme.bodyText2
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: controller.emailController,
                  style: theme.accentTextTheme.bodyText2,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Constants.kgrey.withOpacity(0.12),
                    hintText: "Email",
                    hintStyle: theme.primaryTextTheme.bodyText2,
                  ),
                  validator: (data) {
                    return data.isEmail ? null : "Invalid Email address";
                  },
                  keyboardType: TextInputType.emailAddress,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                ),
                const SizedBox(height: 40),
                Text(
                  "Whats your gender?",
                  style: theme.accentTextTheme.bodyText2
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GenderRadioButton(
                        label: "Male",
                        isSelected: controller.genderType.value == 0,
                        onTap: () => controller.selectGender(0)),
                    GenderRadioButton(
                        label: "Female",
                        isSelected: controller.genderType.value == 1,
                        onTap: () => controller.selectGender(1)),
                    GenderRadioButton(
                        label: "N/A",
                        isSelected: controller.genderType.value == 2,
                        onTap: () => controller.selectGender(2)),
                  ],
                ),
                const SizedBox(height: 40),
                Text(
                  "How much do you train?",
                  style: theme.accentTextTheme.bodyText2
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                DropdownButtonFormField(
                  icon: Icon(Icons.keyboard_arrow_down),
                  iconEnabledColor: Constants.kblack,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Constants.kgrey.withOpacity(0.12),
                    hintText: "Select one Item",
                    hintStyle: theme.primaryTextTheme.bodyText2,
                  ),
                  items: List.generate(
                    Constants.labelListTraining.length,
                    (index) => DropdownMenuItem(
                      child: Text(Constants.labelListTraining[index],
                          style: theme.accentTextTheme.bodyText2),
                      value: index,
                    ),
                  ),
                  dropdownColor: Constants.kwhite,
                  validator: (value) {
                    return value == null ? "Selection is required" : null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (v) {
                    controller.selectedTraining(v);
                  },
                ),
                Spacer(),
                Center(
                  child: RaisedButton(
                    onPressed: controller.validate,
                    elevation: 0,
                    color: Constants.kyellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Container(
                      width: 325,
                      height: 42,
                      alignment: Alignment.center,
                      child: Text(
                        "NEXT",
                        style: theme.accentTextTheme.subtitle1.copyWith(
                            fontWeight: FontWeight.bold, letterSpacing: 1.25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
