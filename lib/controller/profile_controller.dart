// ignore_for_file: camel_case_types, unnecessary_overrides

import 'package:get/get.dart';

class profile_controller extends GetxController {
  String? value;
  RxBool isSelected1 = true.obs;
  RxBool isSelected2 = false.obs;
  RxString selectedValue = ''.obs;

  void set(String title) {
    value = title;
    update();
  }

  changeLanguageSelected() {
    isSelected1.value = !isSelected1.value;
    isSelected2.value = !isSelected2.value;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
