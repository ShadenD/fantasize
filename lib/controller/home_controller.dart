// ignore_for_file: camel_case_types, unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home_controller extends GetxController {
  bool click = false;
  final Color currentColor = Colors.black;

  void changeColor() {
    click = !click;
    // _currentColor == Colors.black
    //     ? const Color.fromARGB(255, 252, 76, 92)
    //     : Colors.black;
    update();
  }
}
