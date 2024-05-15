// ignore_for_file: unused_local_variable, use_super_parameters

import 'package:fantasize/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  final String imagePath;
  final Color initialColor;
  final double width;
   final double height;


  const Categories({
    Key? key,
    required this.initialColor,
    required this.imagePath,
    required this.width,
    required this.height,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    home_controller homeController = Get.put(home_controller());

    return GetBuilder<home_controller>(
      builder: (controller) => GestureDetector(
        onTap: () => controller.changeColor(),
        child: Image.asset(
          imagePath,
          width: width,
          height: height,
          color: initialColor,
        ),
      ),
    );
  }
}
