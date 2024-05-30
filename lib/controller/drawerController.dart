// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Drawer_Controller extends GetxController {
  RxBool isDrawerOpen = false.obs;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  void openDrawer() {
    scaffoldKey.currentState!.openDrawer();
    isDrawerOpen.value = true;
    update();
  }

  Rx<RangeValues> values = const RangeValues(1, 1500).obs;

  void updateSliderValues() {
    values.value = const RangeValues(1, 1500);
    update();
  }

  void closeDrawer() {
    scaffoldKey.currentState!.openEndDrawer();

    isDrawerOpen.value = false;
    update();
  }
}
