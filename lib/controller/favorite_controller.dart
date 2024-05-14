// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class favoritesController extends GetxController {
  bool soldOut = false;
  Widget? soldout(int i) {
    if (i == 2) {
      soldOut = true;
      return Image.asset(
        'assets/images/Component 86.png',
        width: 88,
        height: 29,
      );
    }
    return null;
  }
}
