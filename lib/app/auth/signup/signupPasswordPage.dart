import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_amp/Global/config.dart';
import 'package:login_amp/app/utils/CommonAppbar.dart';

import 'widgets/signupPassword.dart';

class SignupPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getSignupBody(),
    );
  }

  getSignupBody() {
    ThemeData theme = Theme.of(Get.context);
    return SingleChildScrollView(
      child: Container(
        height: Get.context.height,
        child: Column(
          children: [
            getAppBar(),
            Expanded(
              flex: 1,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                height: 100,
                color: theme.scaffoldBackgroundColor,
                child: Column(
                  children: [
                    Text(
                      "SIGN UP",
                      style: theme.textTheme.headline5
                          .copyWith(color: Constants.kyellow),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Divider(
                            color: Constants.kyellow,
                            thickness: 5,
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          flex: 5,
                          child: Divider(
                            color: Constants.kyellow,
                            thickness: 5,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(flex: 9, child: SignupPasswordWidget()),
          ],
        ),
      ),
    );
  }
}
