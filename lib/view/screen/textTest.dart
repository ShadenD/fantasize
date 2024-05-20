// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:fantasize/controller/testc.dart';
import 'package:fantasize/view/widget/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextFieldScreen extends StatelessWidget {
  final TextFieldController textFieldController =
      Get.put(TextFieldController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Form Field with GetX'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: List.generate(
            textFieldController.textFields.length,
            (index) => Obx(
              () => CustomTextFormField(
                controller: textFieldController.textFields[index].controller,
                isBold: textFieldController.textFields[index].isBold,
                onPressed: () => textFieldController.toggleBold(index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
