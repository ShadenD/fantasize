// ignore_for_file: must_be_immutable

import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Payment_Method extends StatelessWidget {
  Payment_Method({super.key});
  List method = [
    'assets/images/CREDIT CARD (1).png',
    'assets/images/CREDIT CARD (2).png',
    'assets/images/CREDIT CARD (3).png'
  ];

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
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => InkWell(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(40, 25, 5, 9),
                      child: Image.asset(method[index]),
                    ),
                  ),
                  itemCount: method.length,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
