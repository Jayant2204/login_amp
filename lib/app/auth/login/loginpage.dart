import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:login_amp/Global/config.dart';
import 'package:login_amp/app/auth/login/loginController.dart';
import 'package:login_amp/app/auth/login/selectorPage.dart';
import 'package:login_amp/app/utils/CommonAppbar.dart';

class LoginPage extends StatelessWidget {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getLoginBody(),
    );
  }

  getLoginBody() {
    ThemeData theme = Theme.of(Get.context);
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              const Placeholder(
                fallbackHeight: 200,
              ),
              const SizedBox(height: 50),
              TextFormField(
                controller: controller.logincontroller,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Constants.ktextInputFieldBg,
                  hintText: "Username or Email address",
                ),
                validator: (data) {
                  return data.isEmail ? null : "Invalid Email address";
                },
                keyboardType: TextInputType.emailAddress,
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: controller.passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Constants.ktextInputFieldBg,
                  hintText: "Password",
                ),
                validator: (data) {
                  return data.isNullOrBlank ? "Password cannot be blank" : null;
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Get.snackbar("Forgotten password?",
                      "Reset password instrustion sent to mail",
                      backgroundColor: Constants.kyellow,
                      colorText: Constants.kblack);
                },
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgotten password?",
                    style: theme.textTheme.bodyText1
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Obx(
                () => RaisedButton(
                  onPressed: controller.onLogin,
                  color: Constants.kyellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Container(
                    width: 325,
                    height: 42,
                    alignment: Alignment.center,
                    child: Text(
                      controller.timeLeft.value == 0
                          ? "LOG IN"
                          : controller.timeLeft.value.toString(),
                      style: theme.accentTextTheme.headline6,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              FlatButton.icon(
                  onPressed: () {
                    controller.triggerTimer();
                    Get.snackbar(
                        "Login with Facebook", "Facebook login Started",
                        duration: Duration(seconds: 5),
                        backgroundColor: Constants.kyellow,
                        colorText: Constants.kblack);
                  },
                  icon: SvgPicture.asset(Constants.fbIconSvg,
                      height: 24, width: 24),
                  label: Text(
                    "Continue with Facebook",
                  )),
              FlatButton.icon(
                  onPressed: () {
                    controller.triggerTimer();
                    Get.snackbar("Login with Google", "Google login Started",
                        duration: Duration(seconds: 5),
                        backgroundColor: Constants.kyellow,
                        colorText: Constants.kblack);
                  },
                  icon: SvgPicture.asset(Constants.googleIconSvg,
                      height: 24, width: 24),
                  label: Text(
                    "Continue with Google",
                  )),
              const SizedBox(height: 30),
              Divider(thickness: 1),
              const SizedBox(height: 20),
              FlatButton(
                  onPressed: () {
                    Get.to(SelectorPage());
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("Don't have an account? "),
                      Text(
                        "Sign up",
                        style: theme.textTheme.subtitle2
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
