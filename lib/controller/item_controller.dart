// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, avoid_print
import 'package:get/get.dart';

class Items_Controller extends GetxController {
  var tabindex;
  void changeTabIndex(int index) {
    tabindex = index;
    print('tab: $tabindex');
    update();
  }
}
