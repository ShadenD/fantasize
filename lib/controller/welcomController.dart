// ignore_for_file: file_names, unused_element, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class welcom extends GetxController {
  final ScrollController scrollController = ScrollController();
  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  _scrollToTop() {
    var sc = scrollController.jumpTo(0);
  }

  void _scrollToBottom() {
    scrollController.animateTo(
      scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
