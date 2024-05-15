// ignore_for_file: camel_case_types

import 'package:get/get.dart';

class profile_controller extends GetxController {
  String? value;

  void set(String title) {
    value = title;
    update();
  }
}
