// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class textfield extends StatelessWidget {
  final String title;
  final double width;
    final double left1;

  const textfield({super.key, required this.title, required this.width, required this.left1});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            // color: Colors.red,
            width: width,
            height: 28,
            margin:  EdgeInsets.fromLTRB(left1, 20, 200, 10),
            child: Text(
              title,
              style: const TextStyle(fontSize: 20),
            )),
        Container(
            margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            width: 346,
            height: 51,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            child: const TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(244, 242, 242, 242),
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ))
      ],
    );
  }
}
