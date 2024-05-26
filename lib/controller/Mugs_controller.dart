// ignore_for_file: camel_case_types, file_names

import 'package:get/get.dart';

class Musgs_controller extends GetxController {
  RxBool mug1 = false.obs;
  RxBool mug2 = false.obs;
  RxInt type1 = 10.obs;
  RxInt type2 = 10.obs;
  RxInt type3 = 10.obs;

  RxBool typee1 = false.obs;
  RxBool typee2 = false.obs;

  mug1Toggle() {
    mug1.value = !mug1.value;
    mug2.value = false;
    update();
  }

  void settypee() {
    typee1.value = true;
    typee2.value = false;
  }

  void settypee1() {
    typee2.value = true;
  }

  void typeToggle(int ind) {
    type1.value = ind;
    type3.value = 10;
    type2.value = 10;

    update();
  }

  void type2Toggle(int ind) {
    type3.value = ind;
    type2.value = 10;
    type1.value = 10;
    update();
  }

  void type1Toggle(int ind) {
    type2.value = ind;
    type3.value = 10;
    type1.value = 10;
    update();
  }

  mug2Toggle() {
    mug2.value = !mug2.value;
    mug1.value = false;
    update();
  }
}
