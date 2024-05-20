// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:fantasize/view/widget/ColorSelectionWidget.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           const  Text(
              'Product Name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
         const   SizedBox(height: 20),
            ColorSelectionWidget(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
              },
              child: const Text('Add to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
