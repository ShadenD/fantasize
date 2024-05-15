// ignore_for_file: camel_case_types, avoid_print

import 'package:fantasize/controller/user_info_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class info_textfeild extends StatelessWidget {
  final String title1;
  final String title2;
  final TextEditingController controller1;
  const info_textfeild(
      {super.key,
      required this.title1,
      required this.title2,
      required this.controller1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width * 0.3,
            height: MediaQuery.of(context).size.width * 0.05,
            margin: const EdgeInsets.fromLTRB(0, 20, 220, 10),
            child: Text(
              title1,
              style: const TextStyle(fontSize: 15),
            )),
        Container(
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.width * 0.15,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: GetBuilder<user_info_controller>(
              builder: (controller) => TextFormField(
                controller: controller1,
                decoration: InputDecoration(
                  hintText: title2,
                  hintStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: controller.value
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: controller.value ? Colors.black : Colors.grey),
                  suffixIcon: IconButton(
                      onPressed: () {
                        controller.toggle1();
                        print(controller.value);
                      },
                      icon: Icon(
                        controller.value
                            ? Icons.check
                            : Icons.mode_edit_outline_outlined,
                        size: 20,
                      )),
                  filled: true,
                  fillColor: const Color.fromARGB(244, 245, 242, 242),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
              ),
            ))
      ],
    );
  }
}
