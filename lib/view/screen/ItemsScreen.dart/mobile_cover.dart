// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, must_be_immutable, avoid_print, sort_child_properties_last, unrelated_type_equality_checks, avoid_unnecessary_containers

import 'dart:io';

import 'package:fantasize/controller/Mugs_controller.dart';
import 'package:fantasize/controller/flowerController.dart';
import 'package:fantasize/controller/framePhoto_controller.dart';
import 'package:fantasize/controller/t_shirt_controller.dart';
import 'package:fantasize/models/flower_info.dart';
import 'package:fantasize/view/widget/ColorSelectionWidget.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bottomnavigatCart.dart';
import 'package:fantasize/view/widget/questionItem.dart';
import 'package:fantasize/view/widget/yesNo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mobile_Cover_Item extends StatelessWidget {
  Mobile_Cover_Item({super.key});
  final framePhoto_controller fframePhoto_controller =
      Get.put(framePhoto_controller());
  final T_shirt_controller t_shirt_controller = Get.put(T_shirt_controller());
  final Musgs_controller musgs_controller = Get.put(Musgs_controller());

  String dollar_sign = '\$';
  List flower_data = <flower_information>[
    const flower_information(imageUrl: 'assets/images/cover1.png'),
    const flower_information(imageUrl: 'assets/images/cover2.png'),
    const flower_information(imageUrl: 'assets/images/cover3.png'),
    const flower_information(imageUrl: 'assets/images/cover4.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Container(
            margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
            child: const Logo()),
      ),
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  children: [
                    Theme(
                      data: ThemeData(
                        dividerColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent, // Hide the border
                      ),
                      child: InkWell(
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
                      ),
                    ),
                    const SizedBox(
                      width: 280,
                    ),
                    GetBuilder<FlowerController>(
                      builder: (controller) => Theme(
                        data: ThemeData(
                          dividerColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                        ),
                        child: IconButton(
                            autofocus: true,
                            onPressed: () {
                              controller.toggle();
                            },
                            icon: controller.valuee.value
                                ? const Icon(
                                    Icons.favorite,
                                    color: Color.fromARGB(255, 252, 76, 92),
                                  )
                                : const Icon(Icons.favorite_border_outlined)),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Container(
                            margin: const EdgeInsets.all(0.0),
                            height: MediaQuery.of(context).size.height * 0.1,
                            width: MediaQuery.of(context).size.width * 0.54,
                            // color: Colors.red,
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Image.asset(flower_data[index].imageUrl),
                            ]));
                      } else {
                        return Container(
                          margin: const EdgeInsets.all(3.0),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.5,
                          // color: Colors.red,
                          alignment: Alignment.center,
                          child: Image.asset(flower_data[index].imageUrl),
                        );
                      }
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(30, 20, 70, 2),
                  child: const Text(
                    'Mobile Cover Printing ',
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 70, 2),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 251, 230, 38),
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 251, 230, 38),
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 251, 230, 38),
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 251, 230, 38),
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 251, 230, 38),
                        size: 20,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '5.0',
                        style: TextStyle(fontSize: 12),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '(7.932 reviews)',
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                  child: const Text(
                    'Make a statement with our Gold-Toned Statement Hoop Earrings. These chic, oversized hoops feature a lustrous, polished finish and a unique curved silhouette for an edgy yet elegant addition to any outfit. Perfect for trendsetters looking to elevate their accessory\n game. Whether dressing up for a special occasion or accentuating a casual ensemble, these earrings are sure to turn heads and become a go-to in any jewelry collection.',
                    style: TextStyle(fontSize: 12, height: 1.9),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                GetBuilder<FlowerController>(
                  builder: (controller) => Center(
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Theme(
                            data: ThemeData(
                              dividerColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                            ),
                            child: InkWell(
                              autofocus: true,
                              onTap: () {
                                controller.remove();
                                print('${controller.values}');
                                print('object');
                              },
                              child: Image.asset(
                                'assets/images/Buttons (1).png',
                                width: MediaQuery.of(context).size.width * 0.1,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Text(
                            '${controller.values.value}',
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                          child: Theme(
                            data: ThemeData(
                              dividerColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                            ),
                            child: InkWell(
                              autofocus: true,
                              onTap: () {
                                controller.add();
                                print('${controller.values}');

                                print('object');
                              },
                              child: Image.asset(
                                'assets/images/Buttons.png',
                                width: MediaQuery.of(context).size.width * 0.1,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black.png',
                  question: 'Type',
                ),
                GetBuilder<Musgs_controller>(
                    builder: (controller) => Container(
                          // color: Colors.black,
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          height: MediaQuery.of(context).size.height * 0.12,
                          child: ListView.builder(
                              itemCount: typeMobile1.length,
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: false,
                              itemBuilder: (context, index) =>
                                  Column(children: [
                                    Row(children: [
                                      InkWell(
                                        onTap: () {
                                          // controller.settypee();
                                          controller.typeToggle(index);
                                        },
                                        child: Container(
                                          height: 22,
                                          width: 120,
                                          // color: Colors.black,
                                          padding: const EdgeInsets.all(4),
                                          margin: const EdgeInsets.fromLTRB(
                                              2, 0, 10, 10),
                                          decoration: BoxDecoration(
                                            color: controller.type1 == index
                                                ? const Color.fromARGB(
                                                    255, 252, 76, 92)
                                                : const Color.fromARGB(
                                                    255, 174, 175, 176),
                                            borderRadius: BorderRadius.circular(
                                                18.0), // Set the radius
                                          ),
                                          child: Text(
                                            typeMobile1[index],
                                            style: TextStyle(
                                                color: controller.type1 == index
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 12),
                                          ),
                                        ),
                                      )
                                    ]),
                                    Row(children: [
                                      InkWell(
                                        onTap: () {
                                          controller.type1Toggle(index);
                                        },
                                        child: Container(
                                          height: 22,
                                          width: 120,
                                          // color: Colors.black,
                                          padding: const EdgeInsets.all(4),
                                          margin: const EdgeInsets.fromLTRB(
                                              2, 0, 10, 10),
                                          decoration: BoxDecoration(
                                            color: controller.type2 == index
                                                ? const Color.fromARGB(
                                                    255, 252, 76, 92)
                                                : const Color.fromARGB(
                                                    255, 157, 158, 159),
                                            borderRadius: BorderRadius.circular(
                                                18.0), // Set the radius
                                          ),
                                          child: Text(
                                            typeMobile1[index],
                                            style: TextStyle(
                                                color: controller.type2 == index
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 12),
                                          ),
                                        ),
                                      )
                                    ]),
                                    Row(children: [
                                      InkWell(
                                        onTap: () {
                                          controller.type2Toggle(index);
                                        },
                                        child: Container(
                                          height: 22,
                                          width: 120,
                                          // color: Colors.black,
                                          padding: const EdgeInsets.all(4),
                                          margin: const EdgeInsets.fromLTRB(
                                              2, 0, 10, 10),
                                          decoration: BoxDecoration(
                                            color: controller.type3 == index
                                                ? const Color.fromARGB(
                                                    255, 252, 76, 92)
                                                : const Color.fromARGB(
                                                    255, 160, 162, 164),
                                            borderRadius: BorderRadius.circular(
                                                18.0), // Set the radius
                                          ),
                                          child: Text(
                                            typeMobile1[index],
                                            style: TextStyle(
                                                color: controller.type3 == index
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 12),
                                          ),
                                        ),
                                      )
                                    ]),
                                  ])),
                        )),
                GetBuilder<T_shirt_controller>(
                  builder: (controller) => Theme(
                    data: ThemeData(
                      dividerColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: InkWell(
                      onTap: () {
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => Dialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.88,
                              height: MediaQuery.of(context).size.height * 0.4,
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Add Your Design',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  const Icon(
                                    Icons.arrow_downward,
                                    size: 40,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(height: 20),
                                  controller.selectedImagePath.value == ''
                                      ? InkWell(
                                          onTap: () {
                                            controller
                                                .showImageSourceActionSheet(
                                                    context);
                                          },
                                          child: const Icon(
                                            Icons.add_photo_alternate,
                                            size: 70,
                                          ),
                                        )
                                      : Image.file(
                                          File(controller
                                              .selectedImagePath.value),
                                          width: 200,
                                          height: 200,
                                        )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: const QuestionItemDetails(
                        imageUrl: 'assets/images/black.png',
                        question: 'Attach Photo or Desgin +',
                      ),
                    ),
                  ),
                ),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black.png',
                  question: 'Attach message',
                ),
                const YesNoWidget(),
                const SizedBox(
                  height: 10,
                ),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black3.png',
                  question: 'Item No.: 1245',
                ),
                const SizedBox(
                  height: 10,
                ),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black.png',
                  question: 'Color?',
                ),
                const SizedBox(height: 0),
                ColorSelectionWidget(),
                ColorSelectionLess(),
                Container(
                  // color: Colors.red,
                  margin: const EdgeInsets.only(right: 60, top: 20),
                  child: const Text(
                    '3 in stock',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 142, 142, 142)),
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
      bottomNavigationBar: BattomNavigatItems(),
    );
  }
}

List boolValue = ['Yes', 'No'];
List typeMobile1 = ['iPhone 15 Pro Max', 'iPhone 15 Pro', 'iPhone 15 Plus'];
List typeMobile2 = ['iPhone 15', 'iPhone 14 Pro Max', 'iPhone 14 Pro'];
List typeMobile3 = ['iPhone 14 Plus', 'iPhone 14', 'iPhone 14 Pro'];
