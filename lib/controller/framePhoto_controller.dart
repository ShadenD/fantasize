// ignore_for_file: camel_case_types, file_names

import 'package:get/get.dart';

class framePhoto_controller extends GetxController {
  RxBool frame1 = false.obs;
  RxBool frame2 = false.obs;

  RxBool frame3 = false.obs;

  RxBool frame4 = false.obs;

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
