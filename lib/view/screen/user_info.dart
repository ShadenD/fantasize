// ignore_for_file: camel_case_types, avoid_print, must_be_immutable

import 'package:fantasize/controller/user_info_controller.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:fantasize/view/widget/info_textfeid.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class User_info extends StatelessWidget {
  User_info({super.key});
  user_info_controller userInfoController = Get.put(user_info_controller());
  TextEditingController username = TextEditingController();
  TextEditingController eddressEmail = TextEditingController();

  TextEditingController phoneNumber = TextEditingController();

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
            child: Column(children: [
              Container(
                // color: Colors.red,
                width: 500,
                height: 40,
                margin: const EdgeInsets.fromLTRB(140, 30, 0, 0),
                child: const Text(
                  'User Name',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 252, 76, 92),
                  ),
                ),
              ),
              info_textfeild(
                title1: 'User Name',
                title2: 'Firas_khalayleh',
                controller1: username, onPressed: () {  },
              ),
              info_textfeild(
                title1: 'Email Adress',
                title2: 'fkmkh11@gmail.com',
                controller1: eddressEmail, onPressed: () {  },
              ),
              info_textfeild(
                title1: 'PhoneNumber',
                title2: '0594386856',
                controller1: phoneNumber, onPressed: () {  },
              ),
              Column(
                children: [
                  Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.width * 0.05,
                      margin: const EdgeInsets.fromLTRB(0, 20, 220, 10),
                      child: const Text(
                        '  Date of Birth',
                        style: TextStyle(fontSize: 15),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(30, 0, 30, 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.width * 0.15,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: GetBuilder<user_info_controller>(
                        builder: (controller) => TextFormField(
                          controller: controller.dateOfBirthday,
                          decoration: InputDecoration(
                            hintText: '27/4/2003',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: controller.value
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                                color: controller.value
                                    ? Colors.black
                                    : Colors.grey),
                            suffixIcon: IconButton(
                                onPressed: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000),
                                    lastDate: DateTime(2101),
                                  );
                                  if (pickedDate != null) {
                                    String date =
                                        DateFormat.yMMM().format(pickedDate);
                                    controller.dateOfBirthday.text = date;
                                  }
                                },
                                icon: const Icon(
                                  Icons.date_range,
                                  size: 20,
                                )),
                            filled: true,
                            fillColor: const Color.fromARGB(244, 245, 242, 242),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ))
                ],
              ),
            ]),
          ))
        ],
      ),
    );
  }
}
