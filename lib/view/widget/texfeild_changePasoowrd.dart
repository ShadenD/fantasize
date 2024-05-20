// ignore_for_file: camel_case_types, file_names, unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class texfeild_changePasoowrd extends StatelessWidget {
  final String title;
  const texfeild_changePasoowrd({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        width: 346,
        height: MediaQuery.of(context).size.height * 0.09,
        decoration: BoxDecoration(
            // color: Colors
            //     .red,
            borderRadius: BorderRadius.circular(5)),
        child: TextField(
          decoration: InputDecoration(
            hintText: title,
            hintStyle: const TextStyle(fontSize: 14),
            filled: true,
            fillColor: const Color.fromARGB(244, 244, 238, 238),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        ));
  }
}
