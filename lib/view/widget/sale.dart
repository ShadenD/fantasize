// ignore_for_file: avoid_unnecessary_containers, camel_case_types, must_be_immutable, non_constant_identifier_names

import 'package:fantasize/models/card_information.dart';
import 'package:fantasize/view/widget/card_item.dart';
import 'package:flutter/material.dart';

class sale extends StatelessWidget {
  sale({super.key});
  var card_data = [
    const Card1(
        title: 'Shop now',
        imageUrl: 'assets/images/Painting (1).png',
        typeItem2: 'Accessories',
        typeItem: 'Accessories Collection',
        text: 'New Collection'),
    const Card1(
        title: 'Shop now',
        imageUrl: 'assets/images/image (1).png',
        typeItem2: 'Candle',
        typeItem: 'Beauty Products',
        text: 'New Collection'),
    const Card1(
        title: 'Shop now',
        imageUrl: 'assets/images/image (2).png',
        typeItem2: 'HandBag',
        typeItem: 'Home Spa Products',
        text: 'New Collection')
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(2),
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: GestureDetector(
                        child: Image.asset(
                          'assets/images/Background.png',
                          width: 325,
                          height: 402,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.fromLTRB(100, 200, 120, 10),
                          child: const FittedBox(
                            fit: BoxFit.none,
                            child: Text(
                              '50% OFF',
                              style:
                                  TextStyle(fontSize: 60, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          margin: const EdgeInsets.fromLTRB(50, 0, 0, 10),
                          child: const Text(
                            'Have a great discount on Gifts For Her',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                        Container(
                          color: Colors.red,
                          height: 47,
                          width: 149,
                          margin: const EdgeInsets.fromLTRB(10, 10, 80, 10),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            onPressed: () {},
                            color: const Color.fromARGB(255, 252, 76, 92),
                            textColor: Colors.white,
                            child: const Text('See Offers',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                      child: GestureDetector(
                        child: Image.asset(
                          'assets/images/Background (5).png',
                          width: 325,
                          height: 402,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.fromLTRB(100, 200, 120, 10),
                          child: const FittedBox(
                            fit: BoxFit.none,
                            child: Text(
                              '50% OFF',
                              style:
                                  TextStyle(fontSize: 60, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          margin: const EdgeInsets.fromLTRB(50, 0, 0, 10),
                          child: const Text(
                            'Have a great discount on Gifts For Her',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                        Container(
                          color: Colors.red,
                          height: 47,
                          width: 149,
                          margin: const EdgeInsets.fromLTRB(10, 10, 80, 10),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            onPressed: () {},
                            color: const Color.fromARGB(255, 252, 76, 92),
                            textColor: Colors.white,
                            child: const Text('See Offers',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                      child: GestureDetector(
                        child: Image.asset(
                          'assets/images/Background (8).png',
                          width: 325,
                          height: 402,
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: const EdgeInsets.fromLTRB(100, 200, 120, 10),
                          child: const FittedBox(
                            fit: BoxFit.none,
                            child: Text(
                              '50% OFF',
                              style:
                                  TextStyle(fontSize: 60, color: Colors.white),
                            ),
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          margin: const EdgeInsets.fromLTRB(50, 0, 0, 10),
                          child: const Text(
                            'Have a great discount on Gifts For Her',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                        Container(
                          color: Colors.red,
                          height: 47,
                          width: 149,
                          margin: const EdgeInsets.fromLTRB(10, 10, 80, 10),
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(14)),
                            padding: const EdgeInsets.symmetric(vertical: 13),
                            onPressed: () {},
                            color: const Color.fromARGB(255, 252, 76, 92),
                            textColor: Colors.white,
                            child: const Text('See Offers',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16)),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 200, // specify the height as per your requirements
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (ctx, index) {
                      return card_item(
                        title: card_data[index].title,
                        imageUrl: card_data[index].imageUrl,
                        typeItem: card_data[index].typeItem,
                        text: card_data[index].text,
                        typeItem2: card_data[index].typeItem2,
                      );
                    },
                    itemCount: 3,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
