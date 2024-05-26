// ignore_for_file: camel_case_types, file_names

import 'package:get/get.dart';

class mixed_controller extends GetxController {
  RxInt material = 0.obs;
  RxInt material2 = 0.obs;
  RxInt material3 = 0.obs;
  RxInt material4 = 0.obs;
  RxInt yesNo = 0.obs;
  RxInt yesNo2 = 0.obs;

  RxInt flavor = 0.obs;
  RxInt flavor1 = 0.obs;
  RxBool flavorr = false.obs;
  RxBool flavorr1 = false.obs;
  void yesNoToggle(int ind) {
    yesNo.value = ind;
    update();
  }

  setNo() {
    yesNo.value = 1;
    update();
  }

  void yesNoToggle2(int ind) {
    yesNo2.value = ind;
    update();
  }

  void materialToggle(int ind) {
    material.value = ind;
    update();
  }

  void material2Toggle(int ind) {
    material2.value = ind;
    update();
  }

  void material3Toggle(int ind) {
    material3.value = ind;
    update();
  }

  void material4Toggle(int ind) {
    material4.value = ind;
    update();
  }

  void setflavor() {
    flavorr.value = true;
    flavorr1.value = false;
  }

  void setflavor1() {
    flavorr1.value = true;
    flavorr.value = false;
  }

  void flavorToggle(int ind) {
    flavor.value = ind;
    update();
  }

  void flavor1Toggle(int ind) {
    flavor1.value = ind;
    update();
  }
}
