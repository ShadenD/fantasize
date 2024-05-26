// ignore_for_file: must_be_immutable, non_constant_identifier_names, file_names

import 'package:fantasize/controller/flowerController.dart';
import 'package:fantasize/view/screen/cart.dart';
import 'package:fantasize/view/screen/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BattomNavigatItems extends StatelessWidget {
  BattomNavigatItems({super.key});
  final FlowerController flowerController = Get.put(FlowerController());
  String dollar_sign = '\$';
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FlowerController>(
        builder: (controller) => controller.cartButton.value
            ? Container(
                margin: const EdgeInsets.only(top: 30),
                color: Colors.transparent,
                height: MediaQuery.of(context).size.height * 0.19,
                padding: const EdgeInsets.all(0),
                child: Stack(children: [
                  ClipPath(
                    clipper: TopCircularClipper(),
                    child: Image.asset(
                      'assets/images/Rectangle 8.png',

                      // color: Colors.transparent,
                      width: 300,
                      height: 70,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    children: [
                      GetBuilder<FlowerController>(
                        builder: (controller) => Container(
                          // color: Colors.red,
                          padding: const EdgeInsets.all(0),
                          height: MediaQuery.of(context).size.height * 0.055,
                          width: MediaQuery.of(context).size.width * 0.6,
                          margin: const EdgeInsets.fromLTRB(70, 40, 0, 0),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            onPressed: () {
                              Get.to(() => cart());
                            },
                            color: const Color.fromARGB(255, 252, 76, 92),
                            textColor: Colors.white,
                            child: const Text('Go to checkout',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 0,
                      ),
                      GetBuilder<FlowerController>(
                        builder: (controller) => Container(
                          // color: Colors.red,
                          padding: const EdgeInsets.all(0),
                          height: MediaQuery.of(context).size.height * 0.055,
                          width: MediaQuery.of(context).size.width * 0.6,
                          margin: const EdgeInsets.fromLTRB(70, 10, 0, 0),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            onPressed: () {
                              Get.to(() => homescreen());
                            },
                            color: const Color.fromARGB(255, 252, 76, 92),
                            textColor: Colors.white,
                            child: const Text('Continue shopping',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18)),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              )
            : Container(
                margin: const EdgeInsets.only(top: 30),
                color: Colors.transparent,
                height: MediaQuery.of(context).size.height * 0.13,
                padding: const EdgeInsets.all(0),
                child: Stack(children: [
                  Image.asset(
                    'assets/images/Rectangle 8.png',
                    width: 300,
                    height: 100,
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
                            onPressed: () {
                              controller.cartToggle();
                            },
                            color: const Color.fromARGB(255, 252, 76, 92),
                            textColor: Colors.white,
                            child: const Text('Add to Cart',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16)),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ));
  }
}

class TopCircularClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 2);
    path.quadraticBezierTo(
      size.width / 4,
      size.height,
      size.width,
      size.height / 4,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
