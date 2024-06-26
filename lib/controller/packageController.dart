// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class package_controller extends GetxController {
  RxBool frame1 = false.obs;
  RxBool frame2 = false.obs;

  RxBool frame3 = false.obs;
  RxBool widget2 = false.obs;
  RxInt ww = 0.obs;
  var selectedImagePath = ''.obs;

  RxBool frame4 = false.obs;
  // RxBool cardD1 = false.obs;
  // RxBool cardD2 = false.obs;
  RxInt flavor = 0.obs;
  RxInt flavor1 = 0.obs;
  RxBool flavorr = false.obs;
  RxBool flavorr1 = false.obs;
  RxString card1 = ''.obs;
  RxString card2 = ''.obs;
  Future<void> pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: source);

    if (image != null) {
      selectedImagePath.value = image.path;
    } else {
      Get.snackbar('Error', 'No image selected');
    }
  }

  void showImageSourceActionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return GetBuilder<package_controller>(
            builder: (controller) => SafeArea(
                  child: Wrap(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.photo_library),
                        title: const Text('Gallery'),
                        onTap: () async {
                          Get.back();
                          await controller.pickImage(ImageSource.gallery);
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.photo_camera),
                        title: const Text('Camera'),
                        onTap: () async {
                          Get.back();
                          await controller.pickImage(ImageSource.camera);
                        },
                      ),
                    ],
                  ),
                ));
      },
    );
  }

  toggleWidget(int inde) {
    ww.value = inde;
    widget2.value = true;
    update();
  }

  // card2Toggle(int inde) {
  //   card2.value = inde;
  //   card1.value;
  //   update();
  // }
  void card1Toggle(String image) {
    card1.value = image;
    card2.value = '';
    update();
  }

  void card2Toggle(String image) {
    card2.value = image;
    card1.value = '';

    update();
  }

  void setflavor() {
    flavorr.value = true;
    flavorr1.value = false;
  }

  void setflavor1() {
    flavorr1.value = true;
    flavorr.value = false;
  }

  void flavorToggle(int ind) {
    flavor.value = ind;
    update();
  }

  void flavor1Toggle(int ind) {
    flavor1.value = ind;
    update();
  }

  size1Toggle() {
    frame1.value = !frame1.value;
    frame2.value = false;
    frame3.value = false;
    frame4.value = false;
    update();
  }

  size2Toggle() {
    frame2.value = !frame2.value;
    frame1.value = false;
    frame3.value = false;
    frame4.value = false;
    update();
  }

  size3Toggle() {
    frame3.value = !frame3.value;
    frame2.value = false;
    frame1.value = false;
    frame4.value = false;
    update();
  }

  size4Toggle() {
    frame4.value = !frame4.value;
    frame2.value = false;
    frame3.value = false;
    frame1.value = false;
    update();
  }

  @override
  void onInit() {
    // frame1.value = false;
    // frame2.value = false;
    // frame3.value = false;
    // frame4.value = false;
    widget2.value = false;
    ww.value = 10;
    super.onInit();
  }
}
