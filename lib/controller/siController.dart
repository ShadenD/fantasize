// ignore_for_file: camel_case_types, file_names

import 'package:get/get.dart';

class Si_controller extends GetxController{
    RxInt si = 0.obs;

  void siToggle(int ind) {
    si.value = ind;
    update();
  }
}