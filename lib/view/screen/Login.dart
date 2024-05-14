// ignore_for_file: file_names, must_be_immutable

import 'package:animate_do/animate_do.dart';
import 'package:fantasize/controller/Login_controller.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/auth/Facebook.dart';
import 'package:fantasize/view/widget/auth/Google.dart';
import 'package:fantasize/view/widget/auth/Or.dart';
import 'package:fantasize/view/widget/auth/custombuttonauth.dart';
import 'package:fantasize/view/widget/auth/passwordtextfeid.dart';
import 'package:fantasize/view/widget/auth/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({super.key});
  login_controller logincontroller = Get.put(login_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Logo(),
      ),
      backgroundColor: Colors.white,
      body: ListView(children: [
        Column(children: [
          Container(
            padding: const EdgeInsets.fromLTRB(40, 140, 40, 40),
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.9),
            child: SizedBox(
              width: 154.0,
              height: 40.0,
              child: FadeInRight(
                child: Image.asset(
                  'assets/images/Sign In.png',
                ),
              ),
            ),
          ),
          const Row(
            children: [
              Facebook(),
              Google(),
            ],
          ),
          const Or(),
          GetBuilder<login_controller>(
            builder: (controller) => FadeInRight(
              child: textformfield(
                hint: 'Email/Phone Number',
                obscureText: null,
                onTapIcon: () {},
              ),
            ),
          ),
          GetBuilder<login_controller>(
            builder: (controller) => FadeInRight(
              child: passwordtextfeid(
                obscureText: controller.isshowpassword,
                onTapIcon: () {
                  controller.showPassword();
                },
                hint: 'Password',
                iconData: controller.isshowpassword
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
          ),
          FadeInRight(
            child: GetBuilder<login_controller>(
                builder: (controller) => Container(
                      margin: const EdgeInsets.only(right: 30),
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          controller.goToForgetPassword();
                        },
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 252, 76, 92),
                          ),
                        ),
                      ),
                    )),
          ),
          GetBuilder<login_controller>(
              builder: (controller) =>
                  CustomButtomAuth(text: "Log In", onPressed: () {})),
          GetBuilder<login_controller>(
            builder: (controller) => Container(
              margin: const EdgeInsets.fromLTRB(50, 10, 30, 0),
              child: FadeInRight(
                child: Row(
                  children: [
                    const Text(
                      'Do not have account?',
                      style: TextStyle(color: Color.fromARGB(255, 60, 76, 88)),
                    ),
                    InkWell(
                      onTap: () {
                        controller.goToSignUp();
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color.fromARGB(255, 252, 76, 92),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ]),
    );
  }
}
