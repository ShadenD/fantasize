// ignore_for_file: unused_element, unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

// ignore: camel_case_types
class T_shirt_controller extends GetxController {
  RxInt tshirt = 0.obs;
    RxInt printing = 0.obs;

  var selectedImagePath = ''.obs;

  void tshirtToggle(int ind) {
    tshirt.value = ind;
    update();
  }
    void printingToggle(int ind) {
    printing.value = ind;
    update();
  }

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
      return GetBuilder<T_shirt_controller>(
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

}
