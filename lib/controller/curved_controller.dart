// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, avoid_print
import 'package:get/get.dart';

class Curved_Controller extends GetxController {
  var tabindex = 0;
  RxInt expansionValue = 33.obs;
  Rx<String> infoItem = Rx<String>('');
  Rx<String> infoItem1 = Rx<String>('');

  void changeTabIndex(int index) {
    tabindex = index;
    // print('tab: $tabindex');
    update();
  }

  changeExpansion(int inde, bool val) {
    if (val) {
      expansionValue.value = inde;
    } else {
      expansionValue.value = 33;
    }
    update();
  }

  setValue(String ind) {
    infoItem.value = ind.toString();
    print('in controller: ${infoItem.value}');
    update();
  }

  setValue1(String ind) {
    infoItem1.value = ind.toString();
    print('in controller: ${infoItem1.value}');
    update();
  }
}
