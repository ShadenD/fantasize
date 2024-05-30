// ignore_for_file: camel_case_types, use_key_in_widget_constructors, must_be_immutable, non_constant_identifier_names, avoid_print

import 'package:fantasize/controller/curved_controller.dart';
import 'package:fantasize/models/categories_data.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/items.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class categoriesscreen extends StatelessWidget {
  categoriesscreen({Key? key});
  final Curved_Controller curved_controller = Get.put(Curved_Controller());
  var category_data = [
    const Category(
      title: 'Woman',
      imageUrl: 'assets/images/Rectangle 734.png',
      itemInfo: [
        'Glasses',
        'Flower',
        'Customize Gift',
        'Hand Bag',
        'Jewelry',
      ],
      itemInfo1: [
        'Stationery',
        'Frame Printing',
        'Mini Cake',
        'Hoodies Printing',
        'Cup Printing',
      ],
    ),
    const Category(
      title: 'Man',
      imageUrl: 'assets/images/Rectangle 733.png',
      itemInfo: [
        'Accessories',
        'HandBag',
        'Accessories',
        'HandBag',
        'Accessories',
      ],
      itemInfo1: [
        'Stationery',
        'Frame Printing',
        'Mini Cake',
        'Hoodies Printing',
        'Cup Printing',
      ],
    ),
    const Category(
      title: 'Baby',
      imageUrl: 'assets/images/Rectangle 735.png',
      itemInfo: [
        'Accessories',
        'HandBag',
        'Accessories',
        'HandBag',
        'Accessories',
      ],
      itemInfo1: [
        'Stationery',
        'Frame Printing',
        'Mini Cake',
        'Hoodies Printing',
        'Cup Printing',
      ],
    ),
    const Category(
      title: 'Gradution',
      imageUrl: 'assets/images/Rectangle 736.png',
      itemInfo: [
        'Accessories',
        'HandBag',
        'Accessories',
        'HandBag',
        'Accessories',
      ],
      itemInfo1: [
        'Stationery',
        'Frame Printing',
        'Mini Cake',
        'Hoodies Printing',
        'Cup Printing',
      ],
    ),
    const Category(
      title: 'Flowers',
      imageUrl: 'assets/images/Rectangle 737.png',
      itemInfo: [
        'Accessories',
        'HandBag',
        'Accessories',
        'HandBag',
        'Accessories',
      ],
      itemInfo1: [
        'Stationery',
        'Frame Printing',
        'Mini Cake',
        'Hoodies Printing',
        'Cup Printing',
      ],
    ),
  ];
  List pages = [
    //Glasses
    PageItem1(
      title: const [
        'GOLDSMITHS',
        'GOLDSMITHS',
        'STELLAR DANGLE EARRINGS',
        'BLOSSOM RING',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
      ],
      imageUrls: const [
        'assets/images/g1.png',
        'assets/images/g2.png',
        'assets/images/g3.png',
        'assets/images/g4.png',
        'assets/images/g7.png',
        'assets/images/g8.png',
        'assets/images/g5.png',
        'assets/images/g6.png',
      ],
      size: const [12.0, 12.0, 10.0, 12.0, 12.0, 12.0, 12.0, 12.0],
      subtitle: 'White Gold 1.20cttw Diamond Line',
      price: const [
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00'
      ],
    ),
    //Flowers:
    PageItem1(
      title: const [
        'GOLDSMITHS',
        'GOLDSMITHS',
        'STELLAR DANGLE EARRINGS',
        'BLOSSOM RING',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
      ],
      imageUrls: const [
        'assets/images/Painting1s.png',
        'assets/images/Painting (11).png',
        'assets/images/Painting (2).png',
        'assets/images/Painting (3).png',
        'assets/images/Painting (4).png',
        'assets/images/Painting (5).png',
        'assets/images/Painting (6).png',
        'assets/images/Painting (7).png',
      ],
      size: const [12.0, 12.0, 10.0, 12.0, 12.0, 12.0, 12.0, 12.0],
      subtitle: 'White Gold 1.20cttw Diamond Line',
      price: const [
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00'
      ],
    ),
    //Gift
    PageItem1(
      title: const [
        'GOLDSMITHS',
        'GOLDSMITHS',
        'STELLAR DANGLE EARRINGS',
        'BLOSSOM RING',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
      ],
      imageUrls: const [
        'assets/images/gift1.png',
        'assets/images/gift2.png',
        'assets/images/gift3.png',
        'assets/images/gift4.png',
        'assets/images/gift5.png',
        'assets/images/gift6.png',
        'assets/images/gift7.png',
        'assets/images/gift8.png',
      ],
      size: const [12.0, 12.0, 10.0, 12.0, 12.0, 12.0, 12.0, 12.0],
      subtitle: 'White Gold 1.20cttw Diamond Line',
      price: const [
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00'
      ],
    ),
    //Hand Bags
    PageItem1(
      title: const [
        'GOLDSMITHS',
        'GOLDSMITHS',
        'STELLAR DANGLE EARRINGS',
        'BLOSSOM RING',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
      ],
      imageUrls: const [
        'assets/images/bag1.png',
        'assets/images/bag2.png',
        'assets/images/bag3.png',
        'assets/images/bag4.png',
        'assets/images/bag5.png',
        'assets/images/bag6.png',
        'assets/images/bag7.png',
        'assets/images/bag8.png',
      ],
      size: const [12.0, 12.0, 10.0, 12.0, 12.0, 12.0, 12.0, 12.0],
      subtitle: 'White Gold 1.20cttw Diamond Line',
      price: const [
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00'
      ],
    ),
    //jewelry
    PageItem1(
      title: const [
        'GOLDSMITHS',
        'GOLDSMITHS',
        'STELLAR DANGLE EARRINGS',
        'BLOSSOM RING',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
      ],
      imageUrls: const [
        'assets/images/je1.png',
        'assets/images/je2.png',
        'assets/images/je3.png',
        'assets/images/je4.png',
        'assets/images/je5.png',
        'assets/images/je6.png',
        'assets/images/je7.png',
        'assets/images/je8.png',
      ],
      size: const [12.0, 12.0, 10.0, 12.0, 12.0, 12.0, 12.0, 12.0],
      subtitle: 'White Gold 1.20cttw Diamond Line',
      price: const [
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00'
      ],
    ),
  ];
  List pages2 = [
    //stationary
    PageItem1(
      title: const [
        'GOLDSMITHS',
        'GOLDSMITHS',
        'STELLAR DANGLE EARRINGS',
        'BLOSSOM RING',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
      ],
      imageUrls: const [
        'assets/images/phone1.png',
        'assets/images/phone2.png',
        'assets/images/phone3.png',
        'assets/images/phone4.png',
        'assets/images/phone5.png',
        'assets/images/phone6.png',
        'assets/images/phone7.png',
        'assets/images/phone8.png',
      ],
      size: const [12.0, 12.0, 10.0, 12.0, 12.0, 12.0, 12.0, 12.0],
      subtitle: 'White Gold 1.20cttw Diamond Line',
      price: const [
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00'
      ],
    ),
    //Frameprinting
    PageItem1(
      title: const [
        'GOLDSMITHS',
        'GOLDSMITHS',
        'STELLAR DANGLE EARRINGS',
        'BLOSSOM RING',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
      ],
      imageUrls: const [
        'assets/images/frpr1.png',
        'assets/images/frpr2.png',
        'assets/images/frpr3.png',
        'assets/images/frpr4.png',
        'assets/images/frpr5.png',
        'assets/images/frpr6.png',
        'assets/images/frpr7.png',
        'assets/images/frpr8.png',
      ],
      size: const [12.0, 12.0, 10.0, 12.0, 12.0, 12.0, 12.0, 12.0],
      subtitle: 'White Gold 1.20cttw Diamond Line',
      price: const [
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00'
      ],
    ),
    //Mini cake
    PageItem1(
      title: const [
        'GOLDSMITHS',
        'GOLDSMITHS',
        'STELLAR DANGLE EARRINGS',
        'BLOSSOM RING',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
      ],
      imageUrls: const [
        'assets/images/mini1.png',
        'assets/images/mini2.png',
        'assets/images/mini3.png',
        'assets/images/mini4.png',
        'assets/images/mini5.png',
        'assets/images/mini6.png',
        'assets/images/mini7.png',
        'assets/images/mini8.png',
      ],
      size: const [12.0, 12.0, 10.0, 12.0, 12.0, 12.0, 12.0, 12.0],
      subtitle: 'White Gold 1.20cttw Diamond Line',
      price: const [
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00'
      ],
    ),
    //hoodies
    PageItem1(
      title: const [
        'GOLDSMITHS',
        'GOLDSMITHS',
        'STELLAR DANGLE EARRINGS',
        'BLOSSOM RING',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
        'GOLDSMITHS',
      ],
      imageUrls: const [
        'assets/images/hoody1.png',
        'assets/images/hoody2.png',
        'assets/images/hoody3.png',
        'assets/images/hoody4.png',
        'assets/images/hoody5.png',
        'assets/images/hoody6.png',
        'assets/images/hoody7.png',
        'assets/images/hoody8.png',
      ],
      size: const [12.0, 12.0, 10.0, 12.0, 12.0, 12.0, 12.0, 12.0],
      subtitle: 'White Gold 1.20cttw Diamond Line',
      price: const [
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00',
        '235.00'
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Logo(),
        leading: const Frame(),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.red,
        child: Column(
          children: [
            Expanded(
              child: GetBuilder<Curved_Controller>(
                builder: (controller) => ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Theme(
                        data: ThemeData(
                          dividerColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent, // Hide the border
                        ),
                        child: Focus(
                          canRequestFocus: false,
                          child: ExpansionTile(
                            trailing: const SizedBox.shrink(),
                            onExpansionChanged: (value) {
                              controller.changeExpansion(index, value);
                            },
                            tilePadding: const EdgeInsets.all(0),
                            expandedCrossAxisAlignment:
                                CrossAxisAlignment.start,
                            expandedAlignment: Alignment.bottomLeft,
                            title: Stack(
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(2, 2, 2, 0),
                                  width: double.infinity,
                                  height: 200,
                                  child: Image.asset(
                                    category_data[index].imageUrl,
                                    width: double.infinity,
                                    height: 200,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child:
                                      controller.expansionValue.value == index
                                          ? const Icon(
                                              Icons.expand_less_outlined,
                                              color: Colors.black,
                                              size: 40,
                                            )
                                          : const Icon(
                                              Icons.expand_more,
                                              color: Colors.black,
                                              size: 40,
                                            ),
                                ),
                              ],
                            ),
                            children: [
                              GetBuilder<Curved_Controller>(
                                builder: (controller) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          for (int i = 0;
                                              i <
                                                  category_data[index]
                                                      .itemInfo
                                                      .length;
                                              i++)
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5),
                                              child: GestureDetector(
                                                onTap: () {
                                                  print(
                                                    category_data[index]
                                                        .itemInfo[i],
                                                  );
                                                  print(
                                                    category_data[index]
                                                        .itemInfo[i],
                                                  );
                                                  controller.setValue(
                                                    category_data[index]
                                                        .itemInfo[i],
                                                  );
                                                  if (controller
                                                          .infoItem.value ==
                                                      category_data[index]
                                                          .itemInfo[i]) {
                                                    Get.to(
                                                      pages[i],
                                                      fullscreenDialog: false,
                                                    );
                                                  }
                                                },
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      '-',
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 5),
                                                    Text(
                                                      category_data[index]
                                                          .itemInfo[i],
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 90,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          for (int i = 0;
                                              i <
                                                  category_data[index]
                                                      .itemInfo1
                                                      .length;
                                              i++)
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 5),
                                              child: GestureDetector(
                                                onTap: () {
                                                  // print(
                                                  //   category_data[index]
                                                  //       .itemInfo1[i],
                                                  // );
                                                  // print(
                                                  //   category_data[index]
                                                  //       .itemInfo1[i],
                                                  // );
                                                  controller.setValue1(
                                                    category_data[index]
                                                        .itemInfo1[i],
                                                  );
                                                  if (controller
                                                          .infoItem1.value ==
                                                      category_data[index]
                                                          .itemInfo1[i]) {
                                                    Get.to(
                                                      pages2[i],
                                                      fullscreenDialog: false,
                                                    );
                                                  }
                                                },
                                                child: Row(
                                                  children: [
                                                    const Text(
                                                      '-',
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20,
                                                      ),
                                                    ),
                                                    const SizedBox(width: 5),
                                                    Text(
                                                      category_data[index]
                                                          .itemInfo1[i],
                                                      style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: category_data.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
