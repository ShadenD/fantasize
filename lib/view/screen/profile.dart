// ignore_for_file: use_key_in_widget_constructors, unused_element, non_constant_identifier_names, must_be_immutable, avoid_unnecessary_containers

import 'package:fantasize/controller/profile_controller.dart';
import 'package:fantasize/core/middleware/constant/routes.dart';
import 'package:fantasize/models/currency.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:fantasize/view/widget/texfeild_changePasoowrd.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

var value;

class Profile extends StatelessWidget {
  Profile({super.key});
  profile_controller profileController = Get.put(profile_controller());

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
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Container(
                    // color: Colors.red,
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.18,
                    margin: const EdgeInsets.fromLTRB(150, 0, 140, 0),
                    child: Image.asset(
                      'assets/images/Profile1.png',
                    ),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(100, 0, 20, 40),
                      child: const Icon(
                        Icons.mode_edit_outline_outlined,
                        size: 30,
                      ),
                    ),
                    Container(
                        // color: Colors.red,
                        margin: const EdgeInsets.fromLTRB(0, 0, 80, 40),
                        child: const Text(
                          'Firas Khalayleh',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                Stack(children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 20, 40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(59),
                      color: const Color.fromARGB(244, 245, 242, 242),
                    ),
                    height: 975,
                    width: 388,
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                        child: Theme(
                          data: ThemeData(
                            dividerColor: Colors.transparent, // Hide the border
                          ),
                          child: ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            collapsedBackgroundColor: Colors.transparent,
                            childrenPadding: EdgeInsets.zero,
                            initiallyExpanded: false,
                            title: const Text(
                              'Personal Information',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            children: [
                              Column(
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 2, 200, 0),
                                    child: InkWell(
                                      onTap: () {
                                        Get.toNamed(AppRoute.User_info);
                                      },
                                      child: const Text(
                                        'User Info',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 10, 130, 0),
                                    child: InkWell(
                                      onTap: () {
                                        showDialog<String>(
                                            context: context,
                                            builder: (BuildContext context) =>
                                                AlertDialog(
                                                  title: Container(
                                                    margin: const EdgeInsets
                                                        .fromLTRB(20, 2, 0, 0),
                                                    alignment: Alignment.center,
                                                    child: const Text(
                                                      'Change Password',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  content:
                                                      SingleChildScrollView(
                                                    child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.8,
                                                      child: const Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          texfeild_changePasoowrd(
                                                            title:
                                                                'Old Password',
                                                          ),
                                                          texfeild_changePasoowrd(
                                                            title:
                                                                'New Password',
                                                          ),
                                                          texfeild_changePasoowrd(
                                                            title:
                                                                'Rewrite Password',
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  actions: <Widget>[
                                                    Container(
                                                      // color: Colors.red,
                                                      height:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.05,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .height *
                                                              0.16,
                                                      margin: const EdgeInsets
                                                          .fromLTRB(
                                                          10, 20, 60, 10),
                                                      child: MaterialButton(
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        14)),
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                vertical: 10),
                                                        onPressed: () {
                                                          Get.back();
                                                        },
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 252, 76, 92),
                                                        textColor: Colors.white,
                                                        child: const Text(
                                                            'Save',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16)),
                                                      ),
                                                    ),
                                                  ],
                                                ));
                                      },
                                      child: Container(
                                        child: const Text(
                                          'Change Password',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 20, 120, 10),
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(AppRoute.address_info);
                          },
                          child: const Text(
                            'Address Information',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        margin: const EdgeInsets.fromLTRB(0, 20, 175, 10),
                        padding: const EdgeInsets.all(2),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(AppRoute.order_history);
                          },
                          child: const Text(
                            'Order History',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        // color: Colors.red,
                        margin: const EdgeInsets.fromLTRB(0, 25, 150, 10),
                        padding: const EdgeInsets.all(2),
                        child: InkWell(
                          onTap: () {
                            Get.toNamed(AppRoute.Payment_Method);
                          },
                          child: const Text(
                            'Payment Method',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(50, 20, 50, 0),
                        child: Theme(
                          data: ThemeData(
                            dividerColor: Colors.transparent, // Hide the border
                          ),
                          child: ExpansionTile(
                            tilePadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            collapsedBackgroundColor: Colors.transparent,
                            childrenPadding: EdgeInsets.zero,
                            initiallyExpanded: false,
                            title: const Text(
                              'Preferences',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            children: [
                              Column(
                                children: [
                                  Container(
                                    // color: Colors.red,
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 2, 0, 0),
                                    child: InkWell(
                                      onTap: () {
                                        return _showModalBottomSheet(context);
                                      },
                                      child: Row(children: [
                                        const Text(
                                          'Currency',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                        GetBuilder<profile_controller>(
                                          builder: (controller) => Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                160, 2, 0, 0),
                                            child: InkWell(
                                              autofocus: false,
                                              child: Text(controller.value!),
                                            ),
                                          ),
                                        )
                                      ]),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 10, 130, 0),
                                    child: InkWell(
                                      onTap: () {},
                                      child: Container(
                                        child: const Text(
                                          'Language',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ],
            ),
          )),
        ],
      ),
    );
  }
}

void _showModalBottomSheet(BuildContext context) {
  profile_controller profileController = Get.put(profile_controller());

  List currency_data = [
    const Currency(title: 'dollar', icon: 'assets/images/Currency.png'),
    const Currency(title: 'euro', icon: 'assets/images/Currency (1).png'),
    const Currency(title: 'rupee', icon: 'assets/images/Currency (2).png'),
    const Currency(title: 'won', icon: 'assets/images/Currency (3).png'),
    const Currency(title: 'pound', icon: 'assets/images/Currency (4).png'),
    const Currency(title: 'lira', icon: 'assets/images/Currency (5).png'),
    const Currency(title: 'rial', icon: 'assets/images/Currency (6).png'),
    const Currency(title: 'taka', icon: 'assets/images/Currency (7).png'),
    const Currency(title: 'krone', icon: 'assets/images/Currency (9).png'),
    const Currency(title: 'tugrik', icon: 'assets/images/Currency (8).png'),
    const Currency(title: 'shekel', icon: 'assets/images/Currency (10).png'),
    const Currency(title: 'bitcoin', icon: 'assets/images/Currency (11).png'),
    const Currency(title: 'yen', icon: 'assets/images/Currency (12).png'),
    const Currency(title: 'frank', icon: 'assets/images/Currency (13).png'),
    const Currency(title: 'etherum', icon: 'assets/images/Currency (14).png'),
    const Currency(title: 'doge coin', icon: 'assets/images/Currency (15).png'),
    const Currency(title: 'rubel', icon: 'assets/images/Currency (16).png'),
    const Currency(title: 'naira', icon: 'assets/images/Currency (17).png'),
    const Currency(title: 'ripple', icon: 'assets/images/Currency (18).png'),
    const Currency(title: 'lite coin', icon: 'assets/images/Currency (19).png'),
  ];
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
          top: Radius.circular(20), bottom: Radius.circular(20)),
    ),
    isScrollControlled: true,
    builder: (context) {
      return FractionallySizedBox(
        heightFactor: 0.6,
        widthFactor: 0.7,
        child: SizedBox(
          // color: Colors.blue,
          height: 100,
          child: Theme(
            data: ThemeData(
              dividerColor: Colors.transparent,
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent, // Hide the border
            ),
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(currency_data.length, (index) {
                return InkWell(
                  onTap: () {
                    profileController.set(currency_data[index].title);
                    print(profileController.value);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    // color: Colors.red,
                    margin: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                            currency_data[index].icon,
                            width: MediaQuery.of(context).size.width * 0.09,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            currency_data[index].title,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 134, 134, 134),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      );
    },
  );
}
