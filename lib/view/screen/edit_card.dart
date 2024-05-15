// ignore_for_file: camel_case_types, must_be_immutable, avoid_unnecessary_containers

import 'package:fantasize/controller/edit_card_controller.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class edit_card extends StatelessWidget {
  edit_card({super.key});
  bool value = false;
  edit_card_controller editCard = Get.put(edit_card_controller());
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.fromLTRB(40, 30, 0, 0),
                    child: Image.asset('assets/images/CREDIT CARD.png'),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 30, 120, 10),
                    child: const Text(
                      'Enter Card Details',
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Stack(children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: const Color.fromARGB(255, 251, 249, 249),
                      ),
                      height: 300,
                      width: 300,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 300,
                          height: 90,
                          margin: const EdgeInsets.fromLTRB(40, 0, 20, 0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: const UnderlineInputBorder(),
                              hintText: 'Card Name',
                              hintStyle: const TextStyle(
                                  color: Color.fromARGB(255, 40, 40, 40),
                                  fontSize: 16),
                              suffix: Image.asset(
                                'assets/images/MASTER CARD LOGO.png',
                                width: 27,
                                height: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 0,
                        ),
                        Container(
                          width: 300,
                          height: 90,
                          margin: const EdgeInsets.fromLTRB(40, 0, 20, 0),
                          child: const TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Card Number',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 40, 40, 40),
                                  fontSize: 16),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              // color: Colors.red,
                              width: 120,
                              height: 80,
                              margin: const EdgeInsets.fromLTRB(60, 0, 20, 20),
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: 'Expiry Date          ',
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 40, 40, 40),
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              width: 90,
                              height: 80,
                              margin: const EdgeInsets.fromLTRB(60, 0, 20, 20),
                              child: const TextField(
                                decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  hintText: 'CVV',
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 40, 40, 40),
                                      fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: 254,
                          height: 15,
                          margin: const EdgeInsets.fromLTRB(0, 0, 90, 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                              Transform.scale(
                                scale: 0.6,
                                child: Checkbox(
                                  side: const BorderSide(
                                    color: Colors.red, // Border color
                                    width: 2.0, // Border width
                                  ),
                                  value: value,
                                  activeColor: Colors.red,
                                  onChanged: (value) {
                                    this.value = value!;
                                  },
                                ),
                              ),
                              const Row(
                                children: [
                                  Text(
                                    'I agree to the',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Terms and Conditions',
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.red),
                                  ),
                                ],
                              ),
                            ]),
                          ),
                        ),
                        Container(
                          width: 254,
                          height: 25,
                          margin: const EdgeInsets.fromLTRB(0, 0, 90, 10),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(children: [
                              Container(
                                child: Transform.scale(
                                  scale: 0.6,
                                  child: Checkbox(
                                    side: const BorderSide(
                                      color: Colors.red, // Border color
                                      width: 2.0, // Border width
                                    ),
                                    value: value,
                                    activeColor: Colors.red,
                                    onChanged: (value) {
                                      this.value = value!;
                                    },
                                  ),
                                ),
                              ),
                              const Text(
                                'Save Details Card ',
                                style: TextStyle(fontSize: 12.0),
                              ),
                            ]),
                          ),
                        ),
                        Container(
                          // color: Colors.red,
                          height: 47,
                          width: 206,
                          margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            padding: const EdgeInsets.symmetric(vertical: 1),
                            onPressed: () {
                              Get.back();
                            },
                            color: const Color.fromARGB(255, 252, 76, 92),
                            textColor: Colors.white,
                            child: const Text('Save',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 25)),
                          ),
                        ),
                      ],
                    )
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
