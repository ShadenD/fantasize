import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Frame extends StatelessWidget {
  const Frame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 68,
        // height: 68,
        margin: const EdgeInsets.fromLTRB(0, 20, 6, 0),
        child: InkWell(
            onTap: () {
              Get.back();
            },
            child: Image.asset(
              'assets/images/Frame.png',
              width: 68,
              height: 68,
            )));
  }
}
