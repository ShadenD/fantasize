// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class CustomButtomAuth extends StatelessWidget {
  final String text;
  final double? heigth;
  final double? width;

  final void Function()? onPressed;
  const CustomButtomAuth(
      {Key? key, required this.text, this.onPressed, this.heigth, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: heigth,
      width: width,
      margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        padding: const EdgeInsets.symmetric(vertical: 13),
        onPressed: onPressed,
        color: const Color.fromARGB(255, 252, 76, 92),
        textColor: Colors.white,
        child: Text(text,
            style:
                const TextStyle(fontWeight: FontWeight.normal, fontSize: 16)),
      ),
    );
  }
}
