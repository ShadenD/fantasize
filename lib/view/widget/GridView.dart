// ignore_for_file: non_constant_identifier_names, unnecessary_string_interpolations, must_be_immutable

import 'package:flutter/material.dart';

class GridView1 extends StatelessWidget {
  final String title;
  final String imagUrl;
  final String subtitle;
  final String price;
  final String score;
  final String? status;
  final Icon star;
  GridView1(
      {super.key,
      required this.title,
      required this.imagUrl,
      required this.subtitle,
      required this.price,
      required this.score,
      this.status,
      required this.star});
  String dollar_sign = '\$';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14.0),
              child: Image.asset(
                imagUrl,
                width: 154,
                height: 211,
              ),
            ),
            Container(
              // color: Colors.red,
              margin: const EdgeInsets.fromLTRB(110, 5, 10, 0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )),
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 85, 0),
          child: Text(
            subtitle,
            style: const TextStyle(
                color: Color.fromARGB(255, 201, 199, 199), fontSize: 10),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(8, 3, 0, 0),
          width:
              MediaQuery.of(context).size.width, // Adjust the width as needed
          child: Row(
            children: [
              Row(
                children: [
                  Text('$dollar_sign'),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 40,
              ),
              const Icon(
                Icons.star,
                size: 18,
                color: Colors.yellow,
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                score,
                style: const TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
      ],
    );
  }
}
