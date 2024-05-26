// ignore_for_file: camel_case_types, file_names

import 'package:get/get.dart';

class package_controller extends GetxController {
  RxBool frame1 = false.obs;
  RxBool frame2 = false.obs;

  RxBool frame3 = false.obs;

  RxBool frame4 = false.obs;
  // RxBool cardD1 = false.obs;
  // RxBool cardD2 = false.obs;
  RxInt flavor = 0.obs;
  RxInt flavor1 = 0.obs;
  RxBool flavorr = false.obs;
  RxBool flavorr1 = false.obs;
  RxString card1 = ''.obs;
  RxString card2 = ''.obs;

  // card1Toggle(int inde) {
  //   card1.value = inde;
  //   card2.value;
  //   update();
  // }

  // card2Toggle(int inde) {
  //   card2.value = inde;
  //   card1.value;
  //   update();
  // }
    void card1Toggle(String image) {
    card1.value = image;
    card2.value = '';
    update();
  }

  void card2Toggle(String image) {
    card2.value = image;
    card1.value = '';

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

  size1Toggle() {
    frame1.value = !frame1.value;
    frame2.value = false;
    frame3.value = false;
    frame4.value = false;
    update();
  }

  size2Toggle() {
    frame2.value = !frame2.value;
    frame1.value = false;
    frame3.value = false;
    frame4.value = false;
    update();
  }

  size3Toggle() {
    frame3.value = !frame3.value;
    frame2.value = false;
    frame1.value = false;
    frame4.value = false;
    update();
  }

  size4Toggle() {
    frame4.value = !frame4.value;
    frame2.value = false;
    frame3.value = false;
    frame1.value = false;
    update();
  }

  @override
  void onInit() {
    // frame1.value = false;
    // frame2.value = false;
    // frame3.value = false;
    // frame4.value = false;
    super.onInit();
  }
}
