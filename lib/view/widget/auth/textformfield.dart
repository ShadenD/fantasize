// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class textformfield extends StatelessWidget {
  final String hint;
  final bool? obscureText;
  final void Function()? onTapIcon;
  // final IconData iconData;

  const textformfield({
    super.key,
    required this.hint,
    required this.obscureText,
    required this.onTapIcon,
    // required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 345,
      margin: const EdgeInsets.fromLTRB(30, 20, 30, 0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(9, 82, 80, 80),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextFormField(
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(20, 12, 100, 20),
          // fillColor: const Color(0x0A000000),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: Color(0x0A000000), width: 0.0),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0x0A000000)),
            borderRadius: BorderRadius.circular(14),
          ),
          hintStyle: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: Color.fromARGB(255, 149, 150, 150),
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
