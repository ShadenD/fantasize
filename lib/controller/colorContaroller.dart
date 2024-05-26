// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorController extends GetxController {
  var selectedColor = Colors.black.obs;
  RxString selectedTatreez = ''.obs;
  RxString selectedTatreez2 = ''.obs;
  var selectedColor2 = Colors.black.obs;

  void selectColor(Color color) {
    selectedColor.value = color;
    selectedColor2.value = Colors.black;
    update();
  }

  void selectColor2(Color color) {
    selectedColor2.value = color;
    selectedColor.value = Colors.black;
    update();
  }

  void selectTatreez(String image) {
    selectedTatreez.value = image;
    selectedTatreez2.value = '';
    update();
  }

  void selectTatreez2(String image) {
    selectedTatreez2.value = image;
    selectedTatreez.value = '';

    update();
  }
}
