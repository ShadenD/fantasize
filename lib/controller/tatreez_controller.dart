// ignore_for_file: camel_case_types
import 'package:get/get.dart';

class tatreez_controller extends GetxController {
  RxInt tatreez = 0.obs;
  void tatreezToggle(int ind) {
    tatreez.value = ind;
    update();
  }
}
