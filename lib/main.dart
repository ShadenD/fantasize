// ignore_for_file: deprecated_member_use

import 'package:fantasize/routes.dart';
import 'package:fantasize/services/services.dart';
import 'package:fantasize/view/screen/ItemsScreen.dart/packages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  Get.put(MyServices());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          dialogTheme: const DialogTheme(
              backgroundColor: Color.fromARGB(255, 255, 255, 255)),
          textTheme: ThemeData.light()
              .textTheme
              .copyWith(headline1: const TextStyle(fontFamily: 'Poppins'))),
      home: Package_Item(),
      getPages: routes,
    );
  }
}
