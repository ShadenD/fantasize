// ignore_for_file: camel_case_types, must_be_immutable

import 'package:fantasize/core/middleware/constant/routes.dart';
import 'package:fantasize/models/cart_info.dart';
import 'package:fantasize/view/screen/edit_card.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:fantasize/view/widget/cart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class cart extends StatelessWidget {
  cart({super.key});

  // ignore: non_constant_identifier_names
  List cart_data = [
    const cart_info(
        imagUrl1: 'assets/images/Image.png',
        title: 'Golden Crescent Hoop Earrings',
        price: '212.99'),
    const cart_info(
        imagUrl1: 'assets/images/Image (9).png',
        title: 'Stellar Dangle Earrings',
        price: '212.99'),
    const cart_info(
        imagUrl1: 'assets/images/Image (11).png',
        title: 'Blossom Petal Ring',
        price: '212.99'),
  ];
  String selectdropdown = 'Address 1  Samu - Hebron - west bank';
  List<String> itemsList = [
    'Address 1  Samu - Hebron - west bank',
    // 'Address 1  Samu - Hebron - west bank',
    // 'Address 1  Samu - Hebron - west bank',
  ];
  String dollar_sign = '\$';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Logo(),
        leading: const Frame(),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      // color: Colors.red,
                      child: ListView.separated(
                          shrinkWrap: true,
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 10,
                              child: Container(
                                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: Image.asset(
                                  'assets/images/Line 2.png',
                                  width: 100,
                                  height: 0,
                                ),
                              ),
                            );
                          },
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 1, left: 1, right: 1),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Cart(
                              imageUrl: cart_data[index].imagUrl1,
                              title: cart_data[index].title,
                              price: cart_data[index].price,
                            );
                          }),
                    ),
                    Container(
                      // color: Colors.red,
                      width: 138,
                      height: 20,
                      margin: const EdgeInsets.fromLTRB(0, 20, 180, 20),
                      child: const Text(
                        'Shipping Information',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                    ),
                    Container(
                      // color: Colors.red,
                      margin: const EdgeInsets.fromLTRB(0, 0, 2, 2),
                      child: Image.asset(
                        'assets/images/Card.png',
                        width: 327,
                        height: 62,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(230, 5, 0, 0),
                      child: InkWell(
                          onTap: () {
                            Get.to(() => edit_card());
                          },
                          child: const Text(
                            'Edit Card',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          )),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 30, bottom: 5),
                            child: const Text(
                              "Total (9 items)",
                              style: TextStyle(fontSize: 13),
                            )),
                        Container(
                          margin: const EdgeInsets.only(left: 190),
                          child: Row(
                            children: [
                              Text(dollar_sign,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                              const Text(
                                "131.97",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 30),
                            child: const Text(
                              "Shipping Fee",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            )),
                        Container(
                          margin: const EdgeInsets.only(left: 200),
                          child: Row(
                            children: [
                              Text(dollar_sign,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              const Text(
                                "0.00",
                                style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.only(left: 40),
                            child: const Text(
                              "Sub Total",
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            )),
                        Container(
                          margin: const EdgeInsets.only(left: 200),
                          child: Row(
                            children: [
                              Text(dollar_sign,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                              const Text(
                                "0.00",
                                style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 327,
                      height: 62,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 246, 245, 245),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white),
                      ),
                      child: DropdownButton<String>(
                        icon: Image.asset(
                          'assets/images/arrow-down.png',
                          width: 20,
                          height: 20,
                        ),
                        padding: const EdgeInsets.all(15),
                        isDense: true,
                        isExpanded: true,
                        value: selectdropdown,
                        items: itemsList
                            .map((item) => DropdownMenuItem(
                                value: item, child: Text(item)))
                            .toList(),
                        onChanged: (String? value) {},
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(230, 5, 0, 0),
                      child: InkWell(
                          onTap: () {
                            Get.toNamed(AppRoute.edit_address);
                          },
                          child: const Text(
                            'Edit Adress',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            // color: Colors.red,
            width: 600,
            height: 200,
            padding: const EdgeInsets.all(0),
            child: Stack(children: [
              Image.asset(
                'assets/images/Rectangle 8.png',
                width: 600,
                height: 160,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Row(children: [
                    Container(
                        margin: const EdgeInsets.only(left: 40, top: 80),
                        child: const Text(
                          "Shipping Fee",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 180, top: 80),
                      child: Row(
                        children: [
                          Text(dollar_sign,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          const Text(
                            "40.0",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                        margin: const EdgeInsets.only(left: 40, top: 4),
                        child: const Text(
                          "Total",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        )),
                    Container(
                      margin: const EdgeInsets.only(left: 225, top: 4),
                      child: Row(
                        children: [
                          Text(dollar_sign,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          const Text(
                            "95.0",
                            style: TextStyle(
                                // fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 14),
                          ),
                        ],
                      ),
                    )
                  ]),
                  Container(
                    // color: Colors.red,
                    height: 47,
                    width: 291.08,
                    margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      onPressed: () {},
                      color: const Color.fromARGB(255, 252, 76, 92),
                      textColor: Colors.white,
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(70, 0, 30, 0),
                            child: const Text('Check Out',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 17)),
                          ),
                          Image.asset(
                            'assets/images/Arrow 2.png',
                            width: 40,
                            height: 33,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
