// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final bool isBold;
  final VoidCallback onPressed;

  const CustomTextFormField({
    required this.controller,
    required this.isBold,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
      decoration: InputDecoration(
        hintText: 'Enter text here',
        suffixIcon: IconButton(
          icon:const Icon(Icons.format_bold),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
