// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Container(
          margin: const EdgeInsets.fromLTRB(10, 20, 50, 15),
          child: Image.asset(
            'assets/images/Group (1).png',
            width: MediaQuery.of(context).size.width * 0.06,
            height: MediaQuery.of(context).size.height * 0.09,
            alignment: Alignment.center,
          ),
        ),
      ]),
    );
  }
}
