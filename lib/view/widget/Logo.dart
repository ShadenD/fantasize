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
          margin: const EdgeInsets.fromLTRB(15, 20, 40, 15),
          child: Image.asset(
            'assets/images/Group (1).png',
            height: 40,
            width: 40,
            alignment: Alignment.center,
          ),
        ),
      ]),
    );
  }
}
