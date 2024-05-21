// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, must_be_immutable, avoid_print, sort_child_properties_last, unrelated_type_equality_checks

import 'package:fantasize/controller/flowerController.dart';
import 'package:fantasize/models/flower_info.dart';
import 'package:fantasize/view/widget/ColorSelectionWidget.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/questionItem.dart';
import 'package:fantasize/view/widget/yesNo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cake_Item extends StatelessWidget {
  Cake_Item({super.key});
  final FlowerController flowerController = Get.put(FlowerController());
  String dollar_sign = '\$';
  List flower_data = <flower_information>[
    const flower_information(imageUrl: 'assets/images/cake1.png'),
    const flower_information(imageUrl: 'assets/images/cake2.png'),
    const flower_information(imageUrl: 'assets/images/cake3.png'),
    const flower_information(imageUrl: 'assets/images/cake4.png'),
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
                            margin: const EdgeInsets.all(8.0),
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.6,
                            // color: Colors.red,
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Image.asset(flower_data[index].imageUrl),
                              Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(90, 80, 20, 20),
                                  alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  child: Image.asset(
                                      'assets/images/Group 56.png')),
                            ]));
                      } else {
                        return Container(
                          margin: const EdgeInsets.all(8.0),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.60,
                          // color: Colors.red,
                          alignment: Alignment.center,
                          child: Image.asset(flower_data[index].imageUrl),
                        );
                      }
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 20, 100, 2),
                  child: const Text(
                    'Mini - Cake Super Cake',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 70, 2),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
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
                  height: 50,
                ),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black.png',
                  question: 'Numbers of rows?',
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
                GetBuilder<FlowerController>(
                  builder: (controller) => const QuestionItemDetails(
                    imageUrl: 'assets/images/black.png',
                    question: 'Type of the cake',
                  ),
                ),
                GetBuilder<FlowerController>(
                  builder: (controller) => Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemExtent: 160,
                        shrinkWrap: false,
                        itemCount: texts.length,
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
                                    texts[index],
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
                                        vertical: 5,
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
                GetBuilder<FlowerController>(
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
                                GetBuilder<FlowerController>(
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
                  question: 'Attach  Message?',
                ),
                const YesNoWidget(),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black3.png',
                  question: 'Item No.: 1245',
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 330, 0),
                  child: const Text(
                    'Color',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 10),
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
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 30),
        // color: Colors.red,
        height: MediaQuery.of(context).size.height * 0.13,
        padding: const EdgeInsets.all(0),
        child: Stack(children: [
          Image.asset(
            'assets/images/Rectangle 8.png',
            width: 300,
            height: 130,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(20, 50, 0, 0),
                child: Row(
                  children: [
                    Text(
                      dollar_sign,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 27),
                    ),
                    const Text('235.00',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 27))
                  ],
                ),
              ),
              const SizedBox(
                width: 70,
              ),
              GetBuilder<FlowerController>(
                builder: (controller) => Container(
                  // color: Colors.red,
                  padding: const EdgeInsets.all(0),
                  height: MediaQuery.of(context).size.height * 0.055,
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14)),
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    onPressed: () {},
                    color: const Color.fromARGB(255, 252, 76, 92),
                    textColor: Colors.white,
                    child: const Text('Add to Cart',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 16)),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

List texts = [
  'Chocolate cake',
  'White cake',
];
List boolValue = ['Yes', 'No'];
List flavor1 = ['coffe', 'Carrot', 'Blueberry', 'Fruit'];
List flavor2 = ['Lotus', 'Nutella', 'Pistachio', 'Oreo'];

List size = ['16', '17', '18', '19'];
List outIn = ['Outer', 'Inner'];
