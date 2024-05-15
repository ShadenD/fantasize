// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class user_info_controller extends GetxController {
  bool value = false;
    TextEditingController dateOfBirthday = TextEditingController();

  void toggle1() {
    value = !value;
    update();
  }
}
