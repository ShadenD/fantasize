// ignore_for_file: camel_case_types, use_key_in_widget_constructors, must_be_immutable, non_constant_identifier_names

import 'package:fantasize/models/categories_data.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:flutter/material.dart';

class categoriesscreen extends StatelessWidget {
  categoriesscreen({Key? key});
  var category_data = [
    const Category(
      title: 'Woman',
      imageUrl: 'assets/images/Rectangle 734.png',
      itemInfo: [
        'Accessories',
        'HandBag',
        'Accessories',
        'HandBag',
        'Accessories',
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
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Logo(),
        leading: const Frame(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(children: [
                    Theme(
                      data: ThemeData(
                        dividerColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent, // Hide the border
                      ),
                      child: Focus(
                        canRequestFocus: false,
                        child: ExpansionTile(
                          tilePadding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          expandedCrossAxisAlignment: CrossAxisAlignment.start,
                          expandedAlignment: Alignment.bottomLeft,
                          title: SizedBox(
                            width: double.infinity,
                            height: 200,
                            child: Image.asset(
                              category_data[index].imageUrl,
                              width: 200,
                              height: 200,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          children: [
                            Row(children: [
                              const Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                category_data[index].itemInfo[0],
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]),
                            Row(children: [
                              const Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                category_data[index].itemInfo[1],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )
                            ]),
                            Row(children: [
                              const Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(category_data[index].itemInfo[2],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))
                            ]),
                            Row(children: [
                              const Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(category_data[index].itemInfo[3],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))
                            ]),
                            Row(children: [
                              const Text(
                                '-',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(category_data[index].itemInfo[4],
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold))
                            ]),
                          ],
                        ),
                      ),
                    ),
                    Container(
                        margin: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                        child: Text(
                          category_data[index].title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ))
                  ]),
                );
              },
              itemCount: category_data.length,
            ),
          ],
        ),
      ),
    );
  }
}
