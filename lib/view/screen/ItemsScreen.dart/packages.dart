// ignore_for_file: camel_case_types, file_names, non_constant_identifier_names, must_be_immutable, avoid_print, sort_child_properties_last, unrelated_type_equality_checks

import 'dart:io';

import 'package:fantasize/controller/Mugs_controller.dart';
import 'package:fantasize/controller/flowerController.dart';
import 'package:fantasize/controller/framePhoto_controller.dart';
import 'package:fantasize/controller/packageController.dart';
import 'package:fantasize/controller/t_shirt_controller.dart';
import 'package:fantasize/models/flower_info.dart';
import 'package:fantasize/view/widget/ColorSelectionWidget.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bottomnavigatCart.dart';
import 'package:fantasize/view/widget/questionItem.dart';
import 'package:fantasize/view/widget/yesNo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Package_Item extends StatelessWidget {
  Package_Item({super.key});
  final framePhoto_controller fframePhoto_controller =
      Get.put(framePhoto_controller());
  final T_shirt_controller t_shirt_controller = Get.put(T_shirt_controller());
  final package_controller package = Get.put(package_controller());
  final Musgs_controller musgs_controller = Get.put(Musgs_controller());
  String dollar_sign = '\$';
  List flower_data = <flower_information>[
    const flower_information(
        imageUrl: 'assets/images/714VqfmTQFL._AC_SL1500_.png'),
    const flower_information(imageUrl: 'assets/images/713jpuk3BIL.png'),
    const flower_information(imageUrl: 'assets/images/61RjfmfZ7mL.png'),
    const flower_information(imageUrl: 'assets/images/81hWcGEG76L.png'),
    const flower_information(imageUrl: 'assets/images/81m+0R44eBL.png'),
  ];
  List shape1 = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/5.png',
  ];
  List shape2 = [
    'assets/images/7.png',
    'assets/images/8.png',
    'assets/images/9.png',
    'assets/images/10.png',
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
                            margin: const EdgeInsets.all(8.0),
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.6,
                            // color: Colors.red,
                            alignment: Alignment.center,
                            child: Stack(children: [
                              Image.asset(flower_data[index].imageUrl),
                            ]));
                      } else {
                        return Container(
                          margin: const EdgeInsets.all(8.0),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.62,
                          // color: Colors.red,
                          alignment: Alignment.center,
                          child: Image.asset(flower_data[index].imageUrl),
                        );
                      }
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 40, 2),
                  child: const Text(
                    'Candle , Cup , Teddy bear , Roze  Packages',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(15, 0, 70, 2),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 20,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
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
                GetBuilder<package_controller>(
                    builder: (controller) => SizedBox(
                          // color: Colors.red,
                          width: MediaQuery.of(context).size.width * 0.99,
                          height: MediaQuery.of(context).size.height * 0.20,
                          child: Row(
                            children: [
                              Theme(
                                data: ThemeData(
                                  dividerColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    controller.size1Toggle();
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        // color: Colors.black,
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 70, 0, 5),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.14,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.08,
                                        child: Image.asset(
                                            'assets/images/FFrame4.png'),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 14, 14, 14),
                                            width: 1.0,
                                          ),
                                        ),
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                        child: Image.asset(
                                          'assets/images/Ellipse 118.png',
                                          color: controller.frame1.value
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Theme(
                                data: ThemeData(
                                  dividerColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    controller.size2Toggle();
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        // color: Colors.black,
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 38, 0, 5),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.20,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.12,
                                        child: Image.asset(
                                            'assets/images/FFrame3.png'),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 14, 14, 14),
                                            width: 1.0,
                                          ),
                                        ),
                                        // color: Colors.black,
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                        child: Image.asset(
                                          'assets/images/Ellipse 118.png',
                                          color: controller.frame2.value
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Theme(
                                data: ThemeData(
                                  dividerColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    controller.size3Toggle();
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        // color: Colors.black,
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 37, 0, 5),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.34,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.12,
                                        child: Image.asset(
                                          'assets/images/FFrame1.png',
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 14, 14, 14),
                                            width: 1.0,
                                          ),
                                        ),
                                        // color: Colors.black,
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                        child: Image.asset(
                                          'assets/images/Ellipse 118.png',
                                          color: controller.frame3.value
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Theme(
                                data: ThemeData(
                                  dividerColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                ),
                                child: InkWell(
                                  onTap: () {
                                    controller.size4Toggle();
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        // color: Colors.black,
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 5, 0, 5),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.3,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.16,
                                        child: Image.asset(
                                            'assets/images/FFrame2.png'),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: const Color.fromARGB(
                                                255, 14, 14, 14),
                                            width: 1.0,
                                          ),
                                        ),
                                        // color: Colors.black,
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 0, 0),
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.02,
                                        child: Image.asset(
                                          'assets/images/Ellipse 118.png',
                                          color: controller.frame4.value
                                              ? Colors.red
                                              : Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                        question: 'Attach Photo or Desgin For Frame',
                      ),
                    ),
                  ),
                ),
                const QuestionItemDetails(
                  imageUrl: 'assets/images/black.png',
                  question: 'Teddy bear Color?',
                ),
                const SizedBox(height: 0),
                ColorSelectionWidget(),
                ColorSelectionLess(),
                GetBuilder<package_controller>(
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
                                      'Candle Smell: ${candleSmel1[controller.flavor.value]}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    )
                                  : Text(
                                      'Candle Smell: ${candleSmel2[controller.flavor1.value]}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                      ),
                                    ),
                              children: [
                                GetBuilder<package_controller>(
                                  builder: (controller) => Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                    height: MediaQuery.of(context).size.height *
                                        0.06,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemExtent: 80,
                                        shrinkWrap: false,
                                        itemCount: candleSmel1.length,
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
                                                    candleSmel1[index],
                                                    style: const TextStyle(
                                                        color: Color.fromARGB(
                                                            255, 80, 79, 79)),
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
                                                  child: Text(
                                                      candleSmel2[index],
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
                  question: 'Card Design',
                ),
                GetBuilder<package_controller>(
                    builder: (controller) => SizedBox(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.37,
                          // color: Colors.red,
                          child: ListView.builder(
                              itemExtent: 100,
                              scrollDirection: Axis.horizontal,
                              itemCount: shape1.length,
                              itemBuilder: (context, index) => Column(
                                    children: [
                                      Row(children: [
                                        Theme(
                                          data: ThemeData(
                                            dividerColor: Colors.transparent,
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              controller
                                                  .card1Toggle(shape1[index]);
                                              print('asdf: $index');
                                            },
                                            child: Column(
                                              children: [
                                                Container(
                                                  // color: Colors.black,
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 10, 0, 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.13,
                                                  child: Image.asset(
                                                    shape1[index],
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 14, 14, 14),
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  // color: Colors.black,
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          30, 10, 10, 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.03,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.02,
                                                  child: Image.asset(
                                                    'assets/images/Ellipse 118.png',
                                                    color: controller
                                                                .card1.value ==
                                                            shape1[index]
                                                        ? Colors.red
                                                        : Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ]),
                                      Row(children: [
                                        Theme(
                                          data: ThemeData(
                                            dividerColor: Colors.transparent,
                                            splashColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                          ),
                                          child: InkWell(
                                            onTap: () {
                                              controller
                                                  .card2Toggle(shape2[index]);
                                              print('asdf: $index');
                                            },
                                            child: Column(
                                              children: [
                                                Container(
                                                  // color: Colors.black,
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 10, 0, 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.13,
                                                  child: Image.asset(
                                                    shape2[index],
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color:
                                                          const Color.fromARGB(
                                                              255, 14, 14, 14),
                                                      width: 1.0,
                                                    ),
                                                  ),
                                                  // color: Colors.black,
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          30, 10, 10, 0),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.03,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                      0.02,
                                                  child: Image.asset(
                                                    'assets/images/Ellipse 118.png',
                                                    color: controller
                                                                .card2.value ==
                                                            shape2[index]
                                                        ? Colors.red
                                                        : Colors.white,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ],
                                  )),
                        )),
                GetBuilder<package_controller>(
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
                              title: const Text(
                                'Flower Type and Color',
                                style: TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                              children: [
                                GetBuilder<package_controller>(
                                  builder: (controller) => Container(
                                    // color: Colors.red,
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    height: MediaQuery.of(context).size.height *
                                        0.4,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    child: ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        itemExtent:
                                            controller.widget2.value ? 60 : 20,
                                        shrinkWrap: false,
                                        itemCount: flowercolor.length,
                                        itemBuilder: (context, index) {
                                          if (controller.ww.value == index) {
                                            return Column(
                                              children: [
                                                Column(children: [
                                                  InkWell(
                                                    onTap: () {
                                                      controller
                                                          .toggleWidget(index);
                                                    },
                                                    child:
                                                        SingleChildScrollView(
                                                      child: controller
                                                                  .ww.value ==
                                                              index
                                                          ? SingleChildScrollView(
                                                              child:
                                                                  ExpansionTile(
                                                                title: Text(
                                                                  flowercolor[
                                                                      index],
                                                                  style: TextStyle(
                                                                      color: controller.ww.value ==
                                                                              index
                                                                          ? Colors
                                                                              .red
                                                                          : const Color
                                                                              .fromARGB(
                                                                              255,
                                                                              37,
                                                                              37,
                                                                              37),
                                                                      fontSize:
                                                                          10),
                                                                ), // Wrap the string in a Text widget
                                                                tilePadding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                collapsedBackgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                childrenPadding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                initiallyExpanded:
                                                                    false,
                                                              ),
                                                            )
                                                          : Container(
                                                              width: 260,
                                                              margin:
                                                                  const EdgeInsets
                                                                      .fromLTRB(
                                                                      0,
                                                                      0,
                                                                      180,
                                                                      0),
                                                              child: Text(
                                                                flowercolor[
                                                                    index],
                                                                style:
                                                                    TextStyle(
                                                                  color: controller
                                                                              .ww
                                                                              .value ==
                                                                          index
                                                                      ? Colors
                                                                          .red
                                                                      : const Color
                                                                          .fromARGB(
                                                                          255,
                                                                          37,
                                                                          37,
                                                                          37),
                                                                ),
                                                              ),
                                                            ),
                                                    ),
                                                  )
                                                ]),
                                              ],
                                            );
                                          } else {
                                            return Column(
                                              children: [
                                                Column(children: [
                                                  InkWell(
                                                    onTap: () {
                                                      controller
                                                          .toggleWidget(index);
                                                    },
                                                    child: Container(
                                                      width: 260,
                                                      // color: Colors.black,
                                                      margin: const EdgeInsets
                                                          .fromLTRB(
                                                          0, 0, 180, 0),
                                                      child: Text(
                                                        flowercolor[index],
                                                        style: TextStyle(
                                                            fontSize: 10,
                                                            color: controller.ww
                                                                        .value ==
                                                                    index
                                                                ? Colors.red
                                                                : const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    37,
                                                                    37,
                                                                    37)),
                                                      ),
                                                    ),
                                                  )
                                                ]),
                                              ],
                                            );
                                          }
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
                  question: 'Mug Color?',
                ),
                const SizedBox(height: 0),
                ColorSelectionWidget(),
                ColorSelectionLess(),
                GetBuilder<package_controller>(
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
                  question: 'Attach Message?',
                ),
                const YesNoWidget(),
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
List candleSmel1 = [
  'Gardenia',
  'Fenella',
  'Sweet Heart',
];
List candleSmel2 = ['Oud', 'Lavender', 'Orange'];
List flowercolor = [
  'Chrysanthemum Spray',
  'Carnation dianthus',
  'Roze and Baby Roze',
  'calla Lily',
  'Anemone',
  'Jasmine',
];
