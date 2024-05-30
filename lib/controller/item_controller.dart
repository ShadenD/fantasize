// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, avoid_print
import 'package:fantasize/models/department.dart';
import 'package:get/get.dart';

class Items_Controller extends GetxController {
  var tabindex;
    RxString image = ''.obs;

  void changeColor(Department depp) {
    image.value = depp.imageUrl;
    update();
  }
  void changeTabIndex(int index) {
    tabindex = index;
    print('tab: $tabindex');
    update();
  }
}
