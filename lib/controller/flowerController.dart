// ignore_for_file: file_names

import 'package:get/get.dart';

class FlowerController extends GetxController {
  RxBool valuee = false.obs;
  RxInt values = 0.obs;
  RxInt material = 0.obs;
  RxInt caliber = 0.obs;
  RxInt size = 0.obs;
  RxInt outIn = 0.obs;
  RxInt flavor = 0.obs;
  RxInt flavor1 = 0.obs;
  RxBool flavorr = false.obs;
  RxBool flavorr1 = false.obs;
  var cartButton = false.obs;

  RxInt yesNo = 0.obs;
  RxInt yesNo2 = 0.obs;

  void add() {
    if (values.value < 10) {
      values.value++;
    } else {
      values.value = 0;
    }
    update();
  }

  cartToggle() {
    cartButton.value = !cartButton.value;
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

  void setflavor() {
    flavorr.value = true;
  }

  void setflavor1() {
    flavorr1.value = true;
  }

  void materialToggle(int ind) {
    material.value = ind;
    update();
  }

  void outInToggle(int ind) {
    outIn.value = ind;
    update();
  }

  void sizeToggle(int ind) {
    size.value = ind;
    update();
  }

  void caliberToggle(int ind) {
    caliber.value = ind;
    update();
  }

  void flavorToggle(int ind) {
    flavor.value = ind;
    update();
  }

  void flavor1Toggle(int ind) {
    flavor1.value = ind;
    update();
  }

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

  setNo2() {
    yesNo2.value = 1;
    update();
  }

  @override
  void onInit() {
    yesNo.value = 1;
    yesNo2.value = 1;
    cartButton.value = false;

    super.onInit();
  }
}
