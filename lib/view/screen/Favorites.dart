// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable, avoid_print, unused_local_variable

import 'package:fantasize/models/favorite_information.dart';
import 'package:fantasize/view/widget/GridView.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Favorites extends StatelessWidget {
  Favorites({super.key});
  List favorites_data = [
    const favorite_information(
      title: 'Modern light clothes',
      imagUrl: 'assets/images/image 43.png',
      subtitle: 'Dress modern',
      price: '212.99',
      score: '5.0',
      Icon: Icon(
        Icons.star,
        color: Colors.yellowAccent,
      ),
    ),
    const favorite_information(
      title: 'Modern light clothes',
      imagUrl: 'assets/images/Frame 10 (1).png',
      subtitle: 'Dress modern',
      price: '212.99',
      score: '5.0',
      Icon: Icon(
        Icons.star,
        color: Colors.yellowAccent,
      ),
    ),
    const favorite_information(
      title: 'Modern light clothes',
      imagUrl: 'assets/images/image 43 (2).png',
      subtitle: 'Dress modern',
      price: '212.99',
      score: '5.0',
      Icon: Icon(
        Icons.star,
        color: Colors.yellowAccent,
      ),
      status: 'assets/images/Component 86.png',
    ),
    const favorite_information(
      title: 'Modern light clothes',
      imagUrl: 'assets/images/WhatsApp Image 2024-04-15 at 06.42 1.png',
      subtitle: 'Dress modern',
      price: '212.99',
      score: '5.0',
      Icon: Icon(
        Icons.star,
        color: Colors.yellowAccent,
      ),
    ),
    const favorite_information(
      title: 'Modern light clothes',
      imagUrl: 'assets/images/image 43 (10).png',
      subtitle: 'Dress modern',
      price: '212.99',
      score: '5.0',
      Icon: Icon(
        Icons.star,
        color: Colors.yellowAccent,
      ),
    ),
    const favorite_information(
      title: 'Modern light clothes',
      imagUrl: 'assets/images/WhatsApp Image 2024-04-15 at 06.42 1 (1).png',
      subtitle: 'Dress modern',
      price: '212.99',
      score: '5.0',
      Icon: Icon(
        Icons.star,
        color: Colors.yellowAccent,
      ),
    ),
    const favorite_information(
      title: 'Modern light clothes',
      imagUrl: 'assets/images/image 43 (12).png',
      subtitle: 'Dress modern',
      price: '212.99',
      score: '5.0',
      Icon: Icon(
        Icons.star,
        color: Colors.yellowAccent,
      ),
    ),
    const favorite_information(
      title: 'Modern light clothes',
      imagUrl: 'assets/images/WhatsApp Image 2024-04-15 at 06.42 1 (2).png',
      subtitle: 'Dress modern',
      price: '212.99',
      score: '5.0',
      Icon: Icon(
        Icons.star,
        color: Colors.yellowAccent,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Logo(),
        leading: const Frame(),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Favorites List',
          style: TextStyle(
              color: Color.fromARGB(255, 252, 76, 92),
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 16,
              childAspectRatio: 0.5,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              int soldOut = 0;
              return InkWell(
                onTap: () {
                  if (index == 2) {
                    print(index);
                    Get.snackbar('', '',
                        snackPosition: SnackPosition.TOP,
                        // backgroundColor: const Color.fromARGB(255, 194, 74, 83),
                        maxWidth: 1000,
                        colorText: Colors.white,
                        titleText: const Text(
                          'This Product is sold out',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                        padding: const EdgeInsets.fromLTRB(60, 50, 60, 60),
                        boxShadows: [
                          BoxShadow(
                            color: const Color.fromARGB(156, 224, 31, 50)
                                .withOpacity(0.5),
                            spreadRadius: 8,
                            blurRadius: 7,
                            offset: const Offset(0, 0),
                          ),
                        ]);
                  }
                },
                child: Stack(children: [
                  GridView1(
                    title: favorites_data[index].title,
                    imagUrl: favorites_data[index].imagUrl,
                    subtitle: favorites_data[index].subtitle,
                    price: favorites_data[index].price,
                    score: favorites_data[index].score,
                    status: favorites_data[index].status,
                    star: favorites_data[index].Icon,
                  ),
                ]),
              );
            },
            itemCount: 8,
            padding:
                const EdgeInsets.only(top: 10, left: 40, right: 30, bottom: 2),
          ),
        ),
      ]),
    );
  }
}
