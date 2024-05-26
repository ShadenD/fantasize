// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, must_be_immutable, avoid_print, sort_child_properties_last, unrelated_type_equality_checks, avoid_unnecessary_containers

import 'package:fantasize/controller/Classes_controller.dart';
import 'package:fantasize/controller/Mugs_controller.dart';
import 'package:fantasize/controller/colorContaroller.dart';
import 'package:fantasize/controller/flowerController.dart';
import 'package:fantasize/controller/framePhoto_controller.dart';
import 'package:fantasize/controller/hoodies_controller.dart';
import 'package:fantasize/controller/t_shirt_controller.dart';
import 'package:fantasize/controller/tatreez_controller.dart';
import 'package:fantasize/models/flower_info.dart';
import 'package:fantasize/view/widget/ColorSelectionWidget.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bottomnavigatCart.dart';
import 'package:fantasize/view/widget/questionItem.dart';
import 'package:fantasize/view/widget/yesNo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tatreez_Item extends StatelessWidget {
  Tatreez_Item({super.key});
  final framePhoto_controller fframePhoto_controller =
      Get.put(framePhoto_controller());
  final T_shirt_controller t_shirt_controller = Get.put(T_shirt_controller());
  final Musgs_controller musgs_controller = Get.put(Musgs_controller());
  final hoodies_controller hoody = Get.put(hoodies_controller());
  final Clasess_controller classes = Get.put(Clasess_controller());
  final tatreez_controller tatreezController = Get.put(tatreez_controller());
  final ColorController colorController = Get.put(ColorController());

  String dollar_sign = '\$';
  List flower_data = <flower_information>[
    const flower_information(imageUrl: 'assets/images/tatreez4.png'),
    const flower_information(imageUrl: 'assets/images/tatreez3.png'),
    const flower_information(imageUrl: 'assets/images/tatreez2.png'),
    const flower_information(imageUrl: 'assets/images/tatreez1.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                          margin: const EdgeInsets.all(8.0),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.4,
                          // color: Colors.red,
                          alignment: Alignment.center,
                          child: Image.asset(flower_data[index].imageUrl),
                        );
                      }
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 60, 2),
                  child: const Text(
                    'Palestinian Tatreez , Bag',
                    style: TextStyle(fontSize: 26),
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
                  question: 'Size',
                ),
                GetBuilder<tatreez_controller>(
                  builder: (controller) => Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemExtent: 80,
                        shrinkWrap: false,
                        itemCount: size.length,
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
                                    controller.tatreezToggle(index);
                                    print('${controller.tatreez}');
                                  },
                                  child: Text(
                                    size[index],
                                    style: TextStyle(
                                        color: controller.tatreez == index
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 14),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: controller.tatreez == index
                                        ? const Color.fromARGB(255, 252, 76, 92)
                                        : const Color.fromARGB(
                                            255, 245, 119, 129),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 30),
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
                  question: 'Type of tatreez',
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GetBuilder<ColorController>(
                        builder: (controller) => SizedBox(
                              height:
                                  100, // Set the height to match the container's height
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: tatreezType.length,
                                itemBuilder: (context, index) {
                                  var tatreez = tatreezType[index];
                                  return Column(children: [
                                    GestureDetector(
                                      onTap: () => colorController
                                          .selectTatreez(tatreez),
                                      child: Container(
                                        width: 80,
                                        height: 90,
                                        margin: const EdgeInsets.only(right: 0),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: colorController
                                                      .selectedTatreez.value ==
                                                  tatreez
                                              ? Border.all(
                                                  color: Colors.red, width: 4)
                                              : null,
                                        ),
                                        child: Image.asset(
                                          tatreez,
                                        ),
                                      ),
                                    ),
                                  ]);
                                },
                              ),
                            )),
                    GetBuilder<ColorController>(
                        builder: (controller) => SizedBox(
                              height: 100,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: tatreez2.length,
                                itemBuilder: (context, index) {
                                  var tatreez = tatreez2[index];
                                  return Column(children: [
                                    GestureDetector(
                                      onTap: () => colorController
                                          .selectTatreez2(tatreez),
                                      child: Container(
                                        width: 80,
                                        height: 80,
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: colorController
                                                      .selectedTatreez2.value ==
                                                  tatreez
                                              ? Border.all(
                                                  color: Colors.red, width: 4)
                                              : null,
                                        ),
                                        child: Image.asset(
                                          tatreez,
                                        ),
                                      ),
                                    ),
                                  ]);
                                },
                              ),
                            )),
                  ],
                ),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black.png',
                  question: 'Tatreez color',
                ),
                const SizedBox(height: 0),
                ColorSelectionWidget(),
                ColorSelectionLess(),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black.png',
                  question: 'Bag color',
                ),
                const SizedBox(height: 0),
                ColorSelectionWidget(),
                ColorSelectionLess(),
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
                Container(
                  // color: Colors.red,
                  margin: const EdgeInsets.only(right: 290, top: 0),
                  child: const Text(
                    '3 in stock',
                    style: TextStyle(
                      fontSize: 13,
                    ),
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
List frameMaterial = ['Metal Frames', 'Plastic Frames'];
List size = ['20', '24', '28', '32'];
List tatreezType = [
  'assets/images/Ellipse 127.png',
  'assets/images/Ellipse 128.png',
  'assets/images/Ellipse 129.png',
  'assets/images/Ellipse 130.png',
];
List tatreez2 = [
  'assets/images/Ellipse 131.png',
  'assets/images/Ellipse 133.png',
];
