// ignore_for_file: camel_case_types, unused_field

import 'package:fantasize/models/department.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class home_controller extends GetxController {
  bool click = false;
  final Color currentColor = Colors.black;
  var department = [].obs;
  RxString image = ''.obs;

  void changeColor(Department depp) {
    image.value = depp.imageUrl;
    update();
  }
}
