// ignore_for_file: camel_case_types

import 'package:get/get.dart';

class hoodies_controller extends GetxController{
    RxInt hoody = 0.obs;
  void hoodyToggle(int ind) {
    hoody.value = ind;
    update();
  }
}