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
        Obx(() {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var color in colors)
                GestureDetector(
                  onTap: () => colorController.selectColor(color),
                  child: Container(
                    width: 20,
                    height: 30,
                    margin: const EdgeInsets.only(right: 0, left: 10),
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
    Colors.grey,
    Colors.pink,
    const Color.fromARGB(255, 252, 76, 92),
    Colors.purple,
  ];
}

class ColorSelectionLess extends StatelessWidget {
  final ColorController colorController2 = Get.put(ColorController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Obx(() {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var color in colorss)
                GestureDetector(
                  onTap: () => colorController2.selectColor2(color),
                  child: Container(
                    width: 20,
                    height: 30,
                    margin: const EdgeInsets.only(right: 0, left: 10),
                    decoration: BoxDecoration(
                      color: color,
                      shape: BoxShape.circle,
                      border: colorController2.selectedColor2.value == color
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
}

final List<Color> colorss = [
  Colors.amber,
  Colors.purpleAccent,
  Colors.limeAccent,
  Colors.lightBlue,
];
