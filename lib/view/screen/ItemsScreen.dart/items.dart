// ignore_for_file: must_be_immutable, avoid_print, non_constant_identifier_names, unrelated_type_equality_checks, annotate_overrides

import 'package:fantasize/controller/drawerController.dart';
import 'package:fantasize/controller/item_controller.dart';
import 'package:fantasize/core/middleware/constant/routes.dart';
import 'package:fantasize/models/department.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/categories.dart';
import 'package:fantasize/view/widget/filterdrawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageItem1 extends StatelessWidget {
  final List imageUrls;
  final List title;
  final List size;
  final List price;
  final String subtitle;
  PageItem1({
    super.key,
    required this.title,
    required this.imageUrls,
    required this.size,
    required this.price,
    required this.subtitle,
  });
  Items_Controller items_controller = Get.put(Items_Controller());
  Drawer_Controller drawer_controller = Get.put(Drawer_Controller());
  String dollar_sign = '\$';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Drawer_Controller>(
      builder: (controller) => Scaffold(
          key: controller.scaffoldKey,
          drawer: Filter_MyDrawer(),
          body: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                  child: Column(children: [
                Row(
                  children: [
                    Column(children: [
                      Container(
                        // color: Colors.red,
                        margin: const EdgeInsets.fromLTRB(10, 15, 50, 0),
                        child: Image.asset(
                          'assets/images/Hello, Welcome 👋.png',
                          width: 90,
                          height: 30,
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        margin: const EdgeInsets.fromLTRB(20, 0, 50, 0),
                        child: const Text(
                          'Firas khalayleh',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ]),
                    Container(
                        // color: Colors.red,
                        margin: const EdgeInsets.fromLTRB(10, 35, 40, 0),
                        child: const Logo()),
                    Container(
                      // color: Colors.red,
                      margin: const EdgeInsets.fromLTRB(10, 35, 20, 10),
                      child: InkWell(
                        onTap: () {
                          Get.toNamed(AppRoute.Profile);
                        },
                        child: Image.asset(
                          'assets/images/Profile.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    )
                  ],
                ),
                GetBuilder<Drawer_Controller>(
                  builder: (controller) => Row(
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
                            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: Image.asset(
                              'assets/images/Frame.png',
                              width: MediaQuery.of(context).size.width * 0.14,
                              height: MediaQuery.of(context).size.height * 0.07,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                          height: 60,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Color.fromARGB(255, 141, 141, 141),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    width: 1,
                                    color: Color.fromARGB(255, 221, 219, 219)),
                              ),
                              hintText: 'search...',
                              hintStyle: const TextStyle(
                                  color: Color.fromARGB(255, 141, 141, 141)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    width: 1,
                                    color: Color.fromARGB(255, 221, 219, 219)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.openDrawer();
                        },
                        child: Container(
                          // color: Colors.red,
                          margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                          child: Image.asset(
                            'assets/images/Filter.png',
                            width: MediaQuery.of(context).size.width * 0.12,
                            height: MediaQuery.of(context).size.height * 0.06,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 0,
                ),
                SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (var dep in departments)
                        Row(
                          children: [
                            Obx(
                              () => Categories(
                                initialColor:
                                    items_controller.image == dep.imageUrl
                                        ? const Color.fromARGB(255, 252, 76, 92)
                                        : const Color.fromARGB(255, 85, 84, 84),
                                onPressed: () {
                                  items_controller.changeColor(dep);
                                },
                                departments: dep,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        // color: Colors.black,
                        height: 500, // Set a specific height
                        child: GridView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.63,
                            crossAxisCount: 2,
                          ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                if (index == 2) {
                                  print(index);
                                  Get.snackbar('', '',
                                      snackPosition: SnackPosition.TOP,
                                      maxWidth: 1000,
                                      colorText: Colors.white,
                                      titleText: const Text(
                                        'This Product is sold out',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 28, color: Colors.white),
                                      ),
                                      padding: const EdgeInsets.fromLTRB(
                                          60, 50, 60, 60),
                                      boxShadows: [
                                        BoxShadow(
                                          color: const Color.fromARGB(
                                                  156, 224, 31, 50)
                                              .withOpacity(0.5),
                                          spreadRadius: 8,
                                          blurRadius: 7,
                                          offset: const Offset(0, 0),
                                        ),
                                      ]);
                                }
                              },
                              child: Column(
                                children: [
                                  SizedBox(
                                    // color: Colors.red,
                                    width:
                                        MediaQuery.of(context).size.width * 0.4,
                                    height:
                                        MediaQuery.of(context).size.width * 0.4,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(14.0),
                                      child: Image.asset(
                                        imageUrls[index],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.black,
                                    width:
                                        MediaQuery.of(context).size.width * 0.5,
                                    margin: const EdgeInsets.fromLTRB(
                                        10, 10, 60, 0),
                                    child: Text(
                                      title[index],
                                      style: TextStyle(
                                        fontSize: size[index],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // color: Colors.black,
                                    width:
                                        MediaQuery.of(context).size.width * 0.9,
                                    margin:
                                        const EdgeInsets.fromLTRB(10, 0, 30, 0),
                                    child: Text(
                                      subtitle,
                                      style: const TextStyle(
                                          color: Color.fromARGB(
                                              255, 179, 177, 177),
                                          fontSize: 9),
                                    ),
                                  ),
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(10, 3, 0, 0),
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        Row(
                                          children: [
                                            Text(dollar_sign),
                                            Text(
                                              price[index],
                                              style: const TextStyle(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                          itemCount: imageUrls.length,
                          padding: const EdgeInsets.only(
                              top: 0, left: 30, right: 20, bottom: 0),
                        ),
                      ),
                    ],
                  ),
                )
              ])))),
    );
  }
}

List<Department> departments = [
  const Department(
      imageUrl: 'assets/images/All Item.png', width: 120, height: 80),
  const Department(imageUrl: 'assets/images/Dress.png', width: 80, height: 60),
  const Department(imageUrl: 'assets/images/Hat.png', width: 95, height: 60),
  const Department(imageUrl: 'assets/images/Watch.png', width: 100, height: 60),
];
