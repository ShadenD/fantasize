// ignore_for_file: unrelated_type_equality_checks, file_names, avoid_print, sort_child_properties_last

import 'package:fantasize/controller/flowerController.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/flowersItem.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YesNoWidget extends StatelessWidget {
  const YesNoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FlowerController>(
      builder: (controller) => Container(
        // color: Colors.red,
        margin: controller.yesNo == 1
            ? const EdgeInsets.fromLTRB(10, 0, 20, 0)
            : const EdgeInsets.fromLTRB(120, 0, 100, 0),
        width: controller.yesNo == 1
            ? double.infinity
            : MediaQuery.of(context).size.width * 0.8,
        height: controller.yesNo == 1
            ? MediaQuery.of(context).size.height * 0.04
            : MediaQuery.of(context).size.height * 0.4,
        child: Center(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemExtent: 90,
            shrinkWrap: false,
            itemCount: controller.yesNo == 1 ? texts.length : 1,
            itemBuilder: (context, index) {
              if (controller.yesNo == 0) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      const Text(
                        'Write your message',
                        style: TextStyle(fontSize: 9),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        width: 200,
                        height: 100,
                        child: TextField(
                            decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )),
                      ),
                      MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14)),
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        onPressed: () {
                          controller.setNo();
                        },
                        color: const Color.fromARGB(255, 252, 76, 92),
                        textColor: Colors.white,
                        child: const Text('Save',
                            style: TextStyle(
                                fontWeight: FontWeight.normal, fontSize: 12)),
                      ),
                    ],
                  ),
                );
              } else {
                return Row(
                  children: [
                    Theme(
                      data: ThemeData(
                        dividerColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: ElevatedButton(
                        autofocus: true,
                        onPressed: () {
                          controller.yesNoToggle(index);
                          print('${controller.yesNo}');
                        },
                        child: Text(
                          boolValue[index],
                          style: TextStyle(
                            color: controller.yesNo == index
                                ? Colors.white
                                : Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: controller.yesNo == index
                              ? const Color.fromARGB(255, 252, 76, 92)
                              : const Color.fromARGB(255, 245, 119, 129),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 5,
                            horizontal: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
