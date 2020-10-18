import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_amp/Global/config.dart';
import 'package:login_amp/app/auth/signup/signupPage.dart';
import 'package:login_amp/app/utils/CommonAppbar.dart';

class SelectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getSelectorBody(),
    );
  }

  getSelectorBody() {
    ThemeData theme = Theme.of(Get.context);

    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Column(
          children: [
            const Placeholder(
              fallbackHeight: 200,
            ),
            const SizedBox(height: 20),
            Container(
              width: 225,
              child: Text(
                "Gain back control of your life".toUpperCase(),
                style: theme.textTheme.headline6,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 50),
            RaisedButton(
              onPressed: Get.back,
              color: Constants.kblue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                width: 325,
                height: 42,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.ac_unit),
                    SizedBox(width: 5),
                    Text(
                      "Sign up with Facebook".toUpperCase(),
                      style: theme.textTheme.subtitle1
                          .copyWith(letterSpacing: 1.2),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            RaisedButton(
              onPressed: Get.back,
              color: Constants.kwhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Container(
                width: 325,
                height: 42,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.ac_unit,
                      color: Constants.kblack,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Sign up with Google".toUpperCase(),
                      style: theme.accentTextTheme.subtitle1
                          .copyWith(letterSpacing: 1.2),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            InkWell(
              onTap: () {
                Get.to(SignupPage());
              },
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Sign up with Email address",
                  style: theme.textTheme.bodyText1
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Divider(thickness: 1),
            const SizedBox(height: 20),
            FlatButton(
              onPressed: Get.back,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Already have an account? "),
                  Text(
                    "Sign in",
                    style: theme.textTheme.subtitle2
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
