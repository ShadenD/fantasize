// ignore_for_file: camel_case_types

import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/auth/custombuttonauth.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:fantasize/view/widget/textfield.dart';
import 'package:flutter/material.dart';

class edit_address extends StatelessWidget {
  const edit_address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Logo(),
        leading: const Frame(),
      ),
      body: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // color: Colors.red,
                  width: 500,
                  height: 40,
                  margin: const EdgeInsets.fromLTRB(100, 30, 70, 0),
                  child: const Text(
                    'Add New Address',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 252, 76, 92),
                    ),
                  ),
                ),
                const textfield(
                  title: 'Address Line',
                  width: 200,
                  left1: 30,
                ),
                const textfield(
                  title: 'Street',
                  width: 114,
                  left1: 0,
                ),
                const textfield(
                  title: 'Region',
                  width: 114,
                  left1: 0,
                ),
                const textfield(
                  title: 'City',
                  width: 114,
                  left1: 0,
                ),
                const textfield(
                  title: 'Country',
                  width: 114,
                  left1: 0,
                ),
                CustomButtomAuth(
                  text: 'Save',
                  heigth: 47,
                  width: 206.18,
                  onPressed: () {},
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
