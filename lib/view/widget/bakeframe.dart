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
      child: ClipRRect(
        child: Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.2,
            margin: const EdgeInsets.fromLTRB(10, 10, 6, 0),
            child: Image.asset(
              'assets/images/Frame.png',
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.3,
            )),
      ),
    );
  }
}
