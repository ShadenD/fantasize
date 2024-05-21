// ignore_for_file: unrelated_type_equality_checks, sort_child_properties_last, avoid_print, file_names

import 'package:fantasize/controller/flowerController.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/flowersItem.dart';
import 'package:fantasize/view/widget/ColorSelectionWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YesNoColor extends StatelessWidget {
  const YesNoColor({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FlowerController>(
      builder: (controller) => Container(
        // color: Colors.red,
        margin: controller.yesNo2 == 1
            ? const EdgeInsets.fromLTRB(10, 0, 20, 0)
            : const EdgeInsets.fromLTRB(0, 0, 200, 0),
        width: controller.yesNo2 == 1
            ? double.infinity
            : MediaQuery.of(context).size.width * 0.8,
        height: controller.yesNo2 == 1
            ? MediaQuery.of(context).size.height * 0.04
            : MediaQuery.of(context).size.height * 0.2,
        child: Center(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemExtent: 90,
            shrinkWrap: false,
            itemCount: controller.yesNo2 == 1 ? texts.length : 1,
            itemBuilder: (context, index) {
              if (controller.yesNo2 == 0) {
                return Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Expanded(
                      child: Column(
                        children: [
                          ColorSelectionWidget(),
                          ColorSelectionLess(),
                          MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            onPressed: () {
                              controller.setNo2();
                            },
                            color: const Color.fromARGB(255, 252, 76, 92),
                            textColor: Colors.white,
                            child: const Text(
                              'Save',
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
                          controller.yesNoToggle2(index);
                          print('${controller.yesNo2}');
                        },
                        child: Text(
                          boolValue[index],
                          style: TextStyle(
                            color: controller.yesNo2 == index
                                ? Colors.white
                                : Colors.black,
                            fontSize: 12,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: controller.yesNo2 == index
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
