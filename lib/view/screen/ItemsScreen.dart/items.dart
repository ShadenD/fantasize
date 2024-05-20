// ignore_for_file: must_be_immutable, avoid_print

import 'package:fantasize/controller/home_controller.dart';
import 'package:fantasize/controller/item_controller.dart';
import 'package:fantasize/core/middleware/constant/routes.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/flowersItem.dart';
import 'package:fantasize/view/screen/homescreen.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageItem extends StatelessWidget {
  PageItem({super.key});
  home_controller homeController = Get.put(home_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
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
                  Container(
                    // color: Colors.red,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 60,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search),
                          hintText: 'search...',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (var dep in departments)
                          Row(
                            children: [
                              GetBuilder<Items_Controller>(
                                builder: (controller) => Categories(
                                  // ignore: unrelated_type_equality_checks
                                  initialColor: homeController.image ==
                                          dep.imageUrl
                                      ? const Color.fromARGB(255, 252, 76, 92)
                                      : Colors.black,
                                  onPressed: () {
                                    homeController.changeColor(dep);
                              
                                    print('cc:  ${controller.tabindex}');
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
                ],
              ),
            ),
          ),
        ],
      ),
      body: GetBuilder<Items_Controller>(
        builder: (controller) => IndexedStack(
          index: controller.tabindex,
          children:  [
            flowers_Item(),
          ],
        ),
      ),
    );
  }
}
