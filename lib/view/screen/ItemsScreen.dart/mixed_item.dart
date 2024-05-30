// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, must_be_immutable, avoid_print, sort_child_properties_last, unrelated_type_equality_checks

import 'package:fantasize/controller/flowerController.dart';
import 'package:fantasize/controller/framePhoto_controller.dart';
import 'package:fantasize/controller/mixedController.dart';
import 'package:fantasize/controller/siController.dart';
import 'package:fantasize/controller/t_shirt_controller.dart';
import 'package:fantasize/models/flower_info.dart';
import 'package:fantasize/view/widget/ColorSelectionWidget.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bottomnavigatCart.dart';
import 'package:fantasize/view/widget/questionItem.dart';
import 'package:fantasize/view/widget/yesNo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Mixed_Item extends StatelessWidget {
  Mixed_Item({super.key});
  final framePhoto_controller fframePhoto_controller =
      Get.put(framePhoto_controller());
  final T_shirt_controller t_shirt_controller = Get.put(T_shirt_controller());
  final Si_controller si_controller = Get.put(Si_controller());
  final mixed_controller mixed = Get.put(mixed_controller());
  String dollar_sign = '\$';
  List flower_data = <flower_information>[
    const flower_information(
        imageUrl: 'assets/images/579ffe19dd643a55c051103c1997a230.png'),
    const flower_information(imageUrl: 'assets/images/Бенто торт.png'),
    const flower_information(
        imageUrl:
            'assets/images/Copycat Starbucks Pumpkin Spice Latte Recipe.png'),
    const flower_information(imageUrl: 'assets/images/coffee.png'),
    const flower_information(imageUrl: 'assets/images/🌹.png'),
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
                    itemCount: flower_data.length,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return Container(
                            margin: const EdgeInsets.all(8.0),
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.7,
                            // color: Colors.red,
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Image.asset(flower_data[index].imageUrl),
                            ]));
                      } else {
                        return Container(
                          margin: const EdgeInsets.all(2.0),
                          height: MediaQuery.of(context).size.height * 0.14,
                          width: MediaQuery.of(context).size.width * 0.55,
                          // color: Colors.red,
                          alignment: Alignment.center,
                          child: Image.asset(flower_data[index].imageUrl),
                        );
                      }
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 2),
                  child: const Text(
                    'Mini Cake - Flower  - Coffee ',
                    style: TextStyle(fontSize: 26),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 70, 2),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 22,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 22,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 22,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 22,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 22,
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
                GetBuilder<mixed_controller>(
                  builder: (controller) => QuestionItemDetails(
                    imageUrl: 'assets/images/black.png',
                    question: controller.material == 1
                        ? 'Material: Natural Roze'
                        : 'Material: Artificial Roze',
                  ),
                ),
                GetBuilder<mixed_controller>(
                  builder: (controller) => Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemExtent: 160,
                        shrinkWrap: false,
                        itemCount: material.length,
                        itemBuilder: (context, index) {
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
                                    controller.materialToggle(index);
                                    print('${controller.material}');
                                  },
                                  child: Text(
                                    material[index],
                                    style: TextStyle(
                                        color: controller.material == index
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 14),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: controller.material ==
                                            index
                                        ? const Color.fromARGB(255, 252, 76, 92)
                                        : const Color.fromARGB(
                                            255, 245, 119, 129),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal:
                                            30), // Adjust padding as needed
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black.png',
                  question: 'FlowerColor',
                ),
                const SizedBox(height: 0),
                ColorSelectionWidget(),
                ColorSelectionLess(),
                GetBuilder<mixed_controller>(
                  builder: (controller) => const QuestionItemDetails(
                    imageUrl: 'assets/images/black.png',
                    question: 'Size',
                  ),
                ),
                GetBuilder<mixed_controller>(
                  builder: (controller) => Container(
                    // color: Colors.black,
                    margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        // itemExtent: 190,
                        shrinkWrap: false,
                        itemCount: sSize.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Theme(
                                data: ThemeData(
                                  dividerColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                                child: Container(
                                  // color: Colors.black,
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                  child: ElevatedButton(
                                    autofocus: true,
                                    onPressed: () {
                                      controller.material2Toggle(index);
                                      print('${controller.material2}');
                                    },
                                    child: Text(
                                      sSize[index],
                                      style: TextStyle(
                                          color: controller.material2 == index
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 14),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          controller.material2 == index
                                              ? const Color.fromARGB(
                                                  255, 252, 76, 92)
                                              : const Color.fromARGB(
                                                  255, 245, 119, 129),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal:
                                              50), // Adjust padding as needed
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ),
                GetBuilder<mixed_controller>(
                  builder: (controller) => const QuestionItemDetails(
                    imageUrl: 'assets/images/black.png',
                    question: 'Type of the cake',
                  ),
                ),
                GetBuilder<mixed_controller>(
                  builder: (controller) => Container(
                    // color: Colors.black,
                    margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        // itemExtent: 190,
                        shrinkWrap: false,
                        itemCount: typeOfCake.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Theme(
                                data: ThemeData(
                                  dividerColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                                child: Container(
                                  // color: Colors.black,
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                  child: ElevatedButton(
                                    autofocus: true,
                                    onPressed: () {
                                      controller.material3Toggle(index);
                                      print('${controller.material3}');
                                    },
                                    child: Text(
                                      typeOfCake[index],
                                      style: TextStyle(
                                          color: controller.material3 == index
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 14),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          controller.material3 == index
                                              ? const Color.fromARGB(
                                                  255, 252, 76, 92)
                                              : const Color.fromARGB(
                                                  255, 245, 119, 129),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal:
                                              30), // Adjust padding as needed
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ),
                GetBuilder<mixed_controller>(
                  builder: (controller) => Row(
                    children: [
                      Image.asset(
                        'assets/images/black.png',
                        width: MediaQuery.of(context).size.width * 0.09,
                        height: 10,
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(top: 0),
                          child: Theme(
                            data: ThemeData(
                              dividerColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                            ),
                            child: ExpansionTile(
                              tilePadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              collapsedBackgroundColor: Colors.transparent,
                              childrenPadding: EdgeInsets.zero,
                              initiallyExpanded: false,
                              title: controller.flavorr.value
                                  ? Text(
                                      'Cake flavor:${flavor1[controller.flavor.value]}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  : Text(
                                      'Cake flavor:${flavor2[controller.flavor1.value]}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                              children: [
                                GetBuilder<mixed_controller>(
                                  builder: (controller) => Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 40, 0),
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemExtent: 80,
                                        shrinkWrap: false,
                                        itemCount: flavor1.length,
                                        itemBuilder: (context, index) {
                                          return Column(
                                            children: [
                                              Row(children: [
                                                InkWell(
                                                  onTap: () {
                                                    controller.setflavor();
                                                    controller
                                                        .flavorToggle(index);
                                                  },
                                                  child: Text(
                                                    flavor1[index],
                                                    style: const TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 77, 73, 73)),
                                                  ),
                                                )
                                              ]),
                                              Row(children: [
                                                InkWell(
                                                  onTap: () {
                                                    controller.setflavor1();
                                                    controller
                                                        .flavor1Toggle(index);
                                                  },
                                                  child: Text(flavor2[index],
                                                      style: const TextStyle(
                                                          color: Color.fromARGB(
                                                              255,
                                                              77,
                                                              73,
                                                              73))),
                                                )
                                              ])
                                            ],
                                          );
                                        }),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black.png',
                  question: 'Color',
                ),
                const SizedBox(height: 0),
                ColorSelectionWidget(),
                ColorSelectionLess(),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black.png',
                  question: 'Write on cake?',
                ),
                const YesNoWidget(),
                const SizedBox(
                  height: 10,
                ),
                GetBuilder<mixed_controller>(
                  builder: (controller) => const QuestionItemDetails(
                    imageUrl: 'assets/images/black.png',
                    question: 'Type of the coffee',
                  ),
                ),
                GetBuilder<mixed_controller>(
                  builder: (controller) => Container(
                    // color: Colors.black,
                    margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        // itemExtent: 190,
                        shrinkWrap: false,
                        itemCount: typeOfCaffee.length,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Theme(
                                data: ThemeData(
                                  dividerColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                                child: Container(
                                  // color: Colors.black,
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                  child: ElevatedButton(
                                    autofocus: true,
                                    onPressed: () {
                                      controller.material4Toggle(index);
                                      print('${controller.material4}');
                                    },
                                    child: Text(
                                      typeOfCaffee[index],
                                      style: TextStyle(
                                          color: controller.material4 == index
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 14),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          controller.material4 == index
                                              ? const Color.fromARGB(
                                                  255, 252, 76, 92)
                                              : const Color.fromARGB(
                                                  255, 245, 119, 129),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                          horizontal:
                                              30), // Adjust padding as needed
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                ),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black.png',
                  question: 'Cream?',
                ),
                GetBuilder<mixed_controller>(
                  builder: (controller) => Container(
                    // color: Colors.red,
                    margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),

                    width: double.infinity,

                    height: MediaQuery.of(context).size.height * 0.04,

                    child: Center(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemExtent: 90,
                          shrinkWrap: false,
                          itemCount: boolValue.length,
                          itemBuilder: (context, index) {
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
                                          ? const Color.fromARGB(
                                              255, 252, 76, 92)
                                          : const Color.fromARGB(
                                              255, 245, 119, 129),
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
                          }),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black.png',
                  question: 'Attach message For all products?',
                ),
                const YesNoWidget(),
                Container(
                  // color: Colors.red,
                  margin: const EdgeInsets.only(right: 300, top: 10),
                  child: const Text(
                    '3 in stock',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                ),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black3.png',
                  question: 'Item No.: 1245',
                ),
                const SizedBox(
                  height: 10,
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
List sSize = ['Roze', 'Baby Roze'];
List material = [
  'Artificial Roze',
  'Natural Roze',
];
List typeOfCake = ['Chocolate Cake    ', 'White Cake'];
List flavor1 = ['coffe', 'Carrot', 'Blueberry', 'Fruit'];
List flavor2 = ['Lotus', 'Nutella', 'Pistachio', 'Oreo'];
List typeOfCaffee = ['Ice Coffee', 'Hot Coffee'];
