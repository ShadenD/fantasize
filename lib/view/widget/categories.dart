// ignore_for_file: unused_local_variable, use_super_parameters

import 'package:fantasize/controller/home_controller.dart';
import 'package:fantasize/models/department.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  final Department departments;
  final Color initialColor;
  final VoidCallback onPressed;

  const Categories({
    Key? key,
    required this.initialColor,
    required this.departments,
    required this.onPressed,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    home_controller homeController = Get.put(home_controller());

    return GetBuilder<home_controller>(
      builder: (controller) => GestureDetector(
        onTap: onPressed,
        child: Image.asset(
          departments.imageUrl,
          width: departments.width,
          height: departments.height,
          color: initialColor,
        ),
      ),
    );
  }
}
