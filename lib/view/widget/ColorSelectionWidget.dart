// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:fantasize/controller/colorContaroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorSelectionWidget extends StatelessWidget {
  final ColorController colorController = Get.put(ColorController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          'Select Color:',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Obx(() {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var color in colors)
                GestureDetector(
                  onTap: () => colorController.selectColor(color),
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 5, left: 10),
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                      border: colorController.selectedColor.value == color
                          ? Border.all(color: Colors.black, width: 2)
                          : null,
                    ),
                  ),
                ),
            ],
          );
        }),
      ],
    );
  }

  final List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.purple,
    Colors.orange,
  ];
}
