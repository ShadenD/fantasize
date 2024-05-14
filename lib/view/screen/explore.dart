// ignore_for_file: camel_case_types

import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:flutter/material.dart';

class explore extends StatelessWidget {
  const explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Logo(),
        leading: const Frame(),
      ),
    );
  }
}
