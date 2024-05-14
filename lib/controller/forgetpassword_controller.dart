// ignore_for_file: camel_case_types, override_on_non_overriding_member

import 'package:fantasize/core/middleware/constant/routes.dart';
import 'package:get/get.dart';

class forgettpasswordController extends GetxController {
  @override
  goToSginUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  goToVerifyCode() {
    Get.offNamed(AppRoute.verfiyCode);
  }
}
