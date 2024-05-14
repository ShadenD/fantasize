// ignore_for_file: non_constant_identifier_names, override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SignUpControllerImp extends GetxController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController name;
  late TextEditingController email_phonenumber;
  late TextEditingController password;

  bool isshowpassword = true;
  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  void onInit() {
    name = TextEditingController();
    email_phonenumber = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
 @override
  // goToSignIn() {
  //   Get.offNamed(AppRoute.login);
  // }

  @override
  void dispose() {
    name.dispose();
    email_phonenumber.dispose();

    password.dispose();
    super.dispose();
  }
}
