// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorController extends GetxController {
  var selectedColor = Colors.black.obs;

  void selectColor(Color color) {
    selectedColor.value = color;
  }
}