// ignore_for_file: camel_case_types

import 'package:fantasize/view/widget/info_textfeid.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class user_info_controller extends GetxController {
  bool value = false;
  TextEditingController dateOfBirthday = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController eddressEmail = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();

  late List<info_textfeild> fields;

  user_info_controller() {
    fields = <info_textfeild>[
      info_textfeild(
        title1: 'User Name',
        title2: 'Firas_khalayleh',
        controller1: username,
        onPressed: () {},
      ),
      info_textfeild(
        title1: 'Email Address',
        title2: 'fkmkh11@gmail.com',
        controller1: eddressEmail,
        onPressed: () {},
      ),
      info_textfeild(
        title1: 'PhoneNumber',
        title2: '0594386856',
        controller1: phoneNumber,
        onPressed: () {},
      ),
    ];
  }

  void toggle1() {
    value = !value;
    update();
  }
}
