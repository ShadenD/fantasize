// ignore_for_file: camel_case_types

import 'package:fantasize/core/middleware/constant/routes.dart';
import 'package:get/get.dart';

class cart_controller extends GetxController {
  RxInt value = 0.obs;

  goToEditCard() {
    Get.offNamed(AppRoute.edit_card);
  }

  void add() {
    value.value++;
    update();
  }

  void subtract() {
    value.value--;
    update();
  }
}
