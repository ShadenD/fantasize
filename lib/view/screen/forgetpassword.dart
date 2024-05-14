// ignore_for_file: camel_case_types, must_be_immutable, avoid_unnecessary_containers
import 'package:fantasize/controller/forgetpassword_controller.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/auth/Facebook.dart';
import 'package:fantasize/view/widget/auth/Google.dart';
import 'package:fantasize/view/widget/auth/Or.dart';
import 'package:fantasize/view/widget/auth/custombuttonauth.dart';
import 'package:fantasize/view/widget/auth/textformfield.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class forgetPassword extends StatelessWidget {
  forgetPassword({super.key});
// ignore: non_constant_identifier_names
  forgettpasswordController forget_Password =
      Get.put(forgettpasswordController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Logo(),
        leading: const Frame(),
      ),
      backgroundColor: Colors.white,
      body: ListView(children: [
        Column(children: [
          Container(
            // color: Colors.red,
            padding: const EdgeInsets.fromLTRB(40, 5, 40, 40),
            alignment: Alignment.center,
            margin: const EdgeInsets.fromLTRB(15, 0, 0, 50),
            child: SizedBox(
              width: 154.0,
              height: 40.0,
              child: Image.asset(
                'assets/images/Forgot Password.png',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/images/Enter Email Address.png',
              width: 150,
              height: 20,
            ),
          ),
          GetBuilder<forgettpasswordController>(
            builder: (controller) => textformfield(
              hint: 'Email/Phone Number',
              obscureText: null,
              onTapIcon: () {},
            ),
          ),
          GetBuilder<forgettpasswordController>(
              builder: (controller) => Container(
                    // color: Colors.red,
                    width: 93,
                    height: 20,
                    margin: const EdgeInsets.only(right: 5),
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        'Back to SignIn',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Color.fromARGB(67, 67, 67, 68),
                        ),
                      ),
                    ),
                  )),
          GetBuilder<forgettpasswordController>(
              builder: (controller) => Container(
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: CustomButtomAuth(
                      text: "Send",
                      onPressed: () {
                        controller.goToVerifyCode();
                      }))),
          const SizedBox(
            height: 90,
          ),
          const Row(
            children: [
              Facebook(),
              Google(),
            ],
          ),
          const Or(),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin:
                const EdgeInsets.fromLTRB(0, 20, 0, 0), // color: Colors.red,
            width: 150,
            height: 25,
            child: InkWell(
              child: Image.asset('assets/images/Do You Have An Account_.png'),
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          GetBuilder<forgettpasswordController>(
              builder: (controller) => Container(
                  child: CustomButtomAuth(
                      text: "Sign Up",
                      onPressed: () {
                        controller.goToSginUp();
                      }))),
        ]),
      ]),
    );
  }
}
