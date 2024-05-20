// ignore_for_file: file_names

import 'package:get/get.dart';

class FlowerController extends GetxController {
  RxBool valuee = false.obs;
  RxInt values = 0.obs;
  RxInt material = 0.obs;

  void add() {
    if (values.value < 10) {
      values.value++;
    } else {
      values.value = 0;
    }
    update();
  }

  void remove() {
    if (values.value == 0) {
      values.value = 0;
    } else {
      values.value--;
    }
    update();
  }

  void toggle() {
    valuee.value = !valuee.value;
    update();
  }

  void materialToggle(int ind) {
    material.value = ind;
    update();
  }
}
