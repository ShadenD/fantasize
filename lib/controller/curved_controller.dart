// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'package:get/get.dart';

class Curved_Controller extends GetxController {
  var tabindex = 0;
  void changeTabIndex(int index) {
    tabindex = index;
    // print('tab: $tabindex');
    update();
  }
}
