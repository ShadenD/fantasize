// ignore_for_file: must_be_immutable, use_super_parameters

import 'package:fantasize/controller/welcomController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  welcom welcomcontroller = Get.put(welcom());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(controller: welcomcontroller.scrollController,
       children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(140),
          decoration: const BoxDecoration(
            color: Color(0xFF000000),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Column(children: [
                  Image.asset(
                    'assets/images/Logo 1.png',
                  ),
                  SizedBox(
                    height: 15,
                    width: 40,
                    child: Image.asset(
                      'assets/images/XMLID_222.png',
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
