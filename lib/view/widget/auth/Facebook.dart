// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Facebook extends StatelessWidget {
  const Facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 60,
      width: 170,
      margin: const EdgeInsets.fromLTRB(30, 0, 0, 10),
      padding: const EdgeInsets.all(0),
      child: MaterialButton(
        onPressed: () {},
        child: Image.asset(
          'assets/images/Facebook.png',
          height: 150,
          width: 150,
        ),
      ),
    );
  }
}
