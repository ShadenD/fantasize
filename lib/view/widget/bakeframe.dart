import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Frame extends StatelessWidget {
  const Frame({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Container(
          // color: Colors.red,
          width: MediaQuery.of(context).size.width * 0.13,
          height: MediaQuery.of(context).size.height * 0.07,
          margin: const EdgeInsets.fromLTRB(7, 0, 6, 0),
          child: Image.asset(
            'assets/images/Frame.png',
            width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.height * 0.1,
          )),
    );
  }
}
