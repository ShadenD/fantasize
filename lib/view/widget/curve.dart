// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable, avoid_print

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:fantasize/controller/curved_controller.dart';
import 'package:fantasize/view/screen/Favorites.dart';
import 'package:fantasize/view/screen/cart.dart';
import 'package:fantasize/view/screen/categories.dart';
import 'package:fantasize/view/screen/explore.dart';
import 'package:fantasize/view/screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class curve extends StatelessWidget {
  curve({super.key});
  Curved_Controller curved_controller = Get.put(Curved_Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GetBuilder<Curved_Controller>(
        builder: (controller) => Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.transparent, // Set the color to transparent
                spreadRadius: 0,
                blurRadius: 8,
                offset: Offset(0, 4), // Shadow position, bottom center
              ),
            ],
          ),
          child: CurvedNavigationBar(
            color: const Color.fromARGB(255, 244, 241, 241),
            height: 55,
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: const Color.fromARGB(255, 250, 246, 246),
            iconPadding: 15,
            animationDuration: const Duration(milliseconds: 200),
            items: [
              CurvedNavigationBarItem(
                child: controller.tabindex == 0
                    ? Image.asset(
                        'assets/images/FrameFill 3.png',
                        width: 50,
                        height: 50,
                        color: const Color.fromARGB(255, 252, 76, 92),
                      )
                    : Image.asset(
                        'assets/images/Frame 3.png',
                        width: 50,
                        height: 50,
                        color: Colors.black,
                      ),
              ),
              CurvedNavigationBarItem(
                child: GetBuilder<Curved_Controller>(
                  builder: (controller) => Image.asset(
                    'assets/images/Frame 9.png',
                    width: 50,
                    height: 50,
                    color: controller.tabindex == 1
                        ? const Color.fromARGB(255, 252, 76, 92)
                        : Colors.black,
                  ),
                ),
              ),
              CurvedNavigationBarItem(
                child: controller.tabindex == 2
                    ? Image.asset(
                        'assets/images/FrameFill 6.png',
                        width: 50,
                        height: 50,
                        color: const Color.fromARGB(255, 252, 76, 92),
                      )
                    : Image.asset(
                        'assets/images/Frame 6.png',
                        width: 50,
                        height: 50,
                        color: Colors.black,
                      ),
              ),
              CurvedNavigationBarItem(
                child: controller.tabindex == 3
                    ? Image.asset('assets/images/FrameFill 7.png',
                        width: 50,
                        height: 50,
                        color: const Color.fromARGB(255, 252, 76, 92))
                    : Image.asset(
                        'assets/images/Frame 7.png',
                        width: 50,
                        height: 50,
                        color: Colors.black,
                      ),
              ),
              CurvedNavigationBarItem(
                child: Image.asset(
                  'assets/images/Frame 10.png',
                  width: 50,
                  height: 50,
                  color: controller.tabindex == 4
                      ? const Color.fromARGB(255, 252, 76, 92)
                      : Colors.black,
                ),
              ),
            ],
            onTap: (index) {
              print(index);

              if (index == 4) {
                Get.to(() => cart());
              }
              controller.changeTabIndex(index);
              controller.tabindex = index;
              print('cc:  ${controller.tabindex}');
            },
          ),
        ),
      ),
      body: GetBuilder<Curved_Controller>(
        builder: (controller) => IndexedStack(
          index: controller.tabindex,
          children: [
            homescreen(),
            categoriesscreen(),
            const explore(),
            Favorites(),
            cart(),
          ],
        ),
      ),
    );
  }
}
