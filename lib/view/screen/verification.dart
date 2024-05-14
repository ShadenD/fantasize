// ignore_for_file: camel_case_types, must_be_immutable, avoid_unnecessary_containers

import 'package:fantasize/controller/verification_controller.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/auth/Facebook.dart';
import 'package:fantasize/view/widget/auth/Google.dart';
import 'package:fantasize/view/widget/auth/Or.dart';
import 'package:fantasize/view/widget/auth/custombuttonauth.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class verfiycode extends StatelessWidget {
  verfiycode({super.key});
  verificationController verify = Get.put(verificationController());
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
            padding: const EdgeInsets.fromLTRB(15, 20, 40, 40),
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 0.9),
            child: SizedBox(
              width: 115.0,
              height: 18.0,
              child: Image.asset(
                'assets/images/Verification.png',
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(110, 35, 0, 0),
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/images/Enter Verification Code.png',
              width: 150,
              height: 20,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(60, 20, 0, 0.9),
            child: Row(children: [
              OtpTextField(
                keyboardType: TextInputType.number,
                fieldWidth: 60.0,
                fieldHeight: 80,
                borderRadius: BorderRadius.circular(80),
                numberOfFields: 4,
                borderColor: const Color.fromARGB(255, 0, 0, 0),
                enabledBorderColor: const Color.fromARGB(255, 105, 103, 103),
                focusedBorderColor: Colors.black,
                showFieldAsBox: true,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {},
              ),
            ]),
          ),
          Container(
            child: InkWell(
                child: Image.asset(
              'assets/images/If you didn’t receive a code, Resend.png',
              width: 220,
              height: 23,
            )),
          ),
          GetBuilder<verificationController>(
              builder: (controller) => Container(
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: CustomButtomAuth(text: "Verify", onPressed: () {}))),
          const SizedBox(
            height: 70,
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
          GetBuilder<verificationController>(
              builder: (controller) => Container(
                  child: CustomButtomAuth(
                      text: "Sign Up",
                      onPressed: () {
                        controller.goToSginUp1();
                      }))),
        ]),
      ]),
    );
  }
}
