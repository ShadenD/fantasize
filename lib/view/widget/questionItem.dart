// ignore_for_file: avoid_print, file_names

import 'package:flutter/material.dart';

class QuestionItemDetails extends StatelessWidget {
  final String imageUrl;
  final String question;
  const QuestionItemDetails({
    super.key,
    required this.question,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Container(
            // color: Colors.red,
            margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: InkWell(
              onTap: () {
                print('object');
              },
              child: Image.asset(
                imageUrl,
                width: MediaQuery.of(context).size.width * 0.04,
                height: MediaQuery.of(context).size.height * 0.04,
              ),
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Text(
            question,
            style: const TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
