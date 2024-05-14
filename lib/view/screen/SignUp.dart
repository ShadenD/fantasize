// ignore_for_file: file_names, must_be_immutable, camel_case_types

import 'package:fantasize/controller/sign_up_controller.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/auth/Facebook.dart';
import 'package:fantasize/view/widget/auth/Google.dart';
import 'package:fantasize/view/widget/auth/Or.dart';
import 'package:fantasize/view/widget/auth/custombuttonauth.dart';
import 'package:fantasize/view/widget/auth/passwordtextfeid.dart';
import 'package:fantasize/view/widget/auth/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signUp extends StatelessWidget {
  signUp({super.key});
  SignUpControllerImp signUpControllerImp = Get.put(SignUpControllerImp());
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
              child: Image.asset(
                'assets/images/Sign Up.png',
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
          GetBuilder<SignUpControllerImp>(
            builder: (controller) => textformfield(
              hint: 'Name',
              obscureText: null,
              onTapIcon: () {},
            ),
          ),
          GetBuilder<SignUpControllerImp>(
            builder: (controller) => textformfield(
              hint: 'Email/Phone Number',
              obscureText: null,
              onTapIcon: () {},
            ),
          ),
          GetBuilder<SignUpControllerImp>(
            builder: (controller) => passwordtextfeid(
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
          GetBuilder<SignUpControllerImp>(
              builder: (controller) => CustomButtomAuth(
                  text: "Create Account".tr, onPressed: () {})),
          GetBuilder<SignUpControllerImp>(
            builder: (controller) => Container(
              margin: const EdgeInsets.fromLTRB(50, 10, 30, 0),
              child: Row(
                children: [
                  const Text(
                    'Do you have account?',
                    style: TextStyle(color: Color.fromARGB(255, 60, 76, 88)),
                  ),
                  InkWell(
                    onTap: () {
                      // controller.goToSignIn();
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Color.fromARGB(255, 252, 76, 92),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      ]),
    );
  }
}
