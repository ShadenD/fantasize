// ignore_for_file: file_names, camel_case_types

import 'package:get/get.dart';

class Clasess_controller extends GetxController {
  RxInt classes = 0.obs;
  void classesToggle(int ind) {
    classes.value = ind;
    update();
  }
}
