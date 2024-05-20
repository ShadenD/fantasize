// ignore_for_file: avoid_function_literals_in_foreach_calls

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldState {
  TextEditingController controller;
  bool isBold;

  TextFieldState({required this.controller, this.isBold = false});
}

class TextFieldController extends GetxController {
  var textFields = <TextFieldState>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize textFields with empty TextEditingController instances
    textFields.addAll(List.generate(
        3, (_) => TextFieldState(controller: TextEditingController())));
  }

  void toggleBold(int index) {
    textFields[index].isBold = !textFields[index].isBold;
    update([index]);
  }

  @override
  void onClose() {
    textFields.forEach((field) => field.controller.dispose());
    super.onClose();
  }
}
