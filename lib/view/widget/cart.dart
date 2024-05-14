// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:fantasize/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  Cart(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.price});
  String dollar_sign = '\$';
  cart_controller cartController = Get.put(cart_controller());
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        margin: const EdgeInsets.fromLTRB(0, 5, 5, 0),
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
      ),
      trailing: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
        child: Column(
          children: [
            InkWell(
              child: Image.asset(
                'assets/images/Menu.png',
                width: 16,
                height: 4,
              ),
            ),
          ],
        ),
      ),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Container(
          height: 90,
          child: Image.asset(
            imageUrl,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
        ),
      ),
      subtitle: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 160, 0),
            child: const Text(
              'Dress modern',
              style: TextStyle(fontSize: 8),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Row(children: [
                Text(dollar_sign),
                Text(price),
              ]),
              const SizedBox(
                width: 20,
              ),
              Stack(children: [
                Container(
                  // color: Colors.red,
                  height: 28,
                  width: 82,
                  margin: const EdgeInsets.fromLTRB(60, 10, 0, 0),
                  padding: const EdgeInsets.all(1),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    padding: const EdgeInsets.all(1),
                    onPressed: () {},
                    color: const Color.fromARGB(255, 252, 76, 92),
                    textColor: Colors.white,
                    child: const Text('',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 16)),
                  ),
                ),
                Row(
                  children: [
                    GetBuilder<cart_controller>(
                      builder: (controller) => Container(
                        margin: const EdgeInsets.only(left: 50, top: 2),
                        child: IconButton(
                          onPressed: () {
                            controller.subtract();
                          },
                          icon: const Icon(
                            Icons.remove,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GetBuilder<cart_controller>(
                      builder: (controller) => Container(
                        child: Text('${cartController.value}'),
                      ),
                    ),
                    GetBuilder<cart_controller>(
                      builder: (controller) => Container(
                        margin:
                            const EdgeInsets.only(left: 1, top: 2, right: 3),
                        child: IconButton(
                          onPressed: () {
                            controller.add();
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ]),
            ],
          )
        ],
      ),
    );
  }
}
