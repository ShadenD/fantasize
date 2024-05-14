// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class card_item extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String typeItem;
  final String typeItem2;

  final String text;
  const card_item(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.typeItem,
      required this.text,
      required this.typeItem2});
  void selectitem() {}
  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: selectitem,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10,
          shadowColor: Colors.white,
          surfaceTintColor: Colors.white,
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.asset(
                      imageUrl,
                      height: 214,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(children: [
                    Container(
                      // color: Colors.red,
                      height: 23,
                      width: 100,
                      margin: const EdgeInsets.fromLTRB(120, 10, 30, 0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        onPressed: () {},
                        color: const Color.fromARGB(255, 252, 76, 92),
                        textColor: Colors.white,
                        child: Text(text,
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 9,
                              overflow: TextOverflow.fade,
                            )),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 90, top: 10),
                      child: Text(
                        typeItem2,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 3),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Text(
                        typeItem,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const SizedBox(
                        width: 90,
                      ),
                      Row(children: [
                        InkWell(
                          child: Text(
                            title,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 252, 76, 92),
                                fontSize: 12),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const InkWell(
                            child: Icon(Icons.shopping_cart_outlined,
                                color: Color.fromARGB(255, 252, 76, 92)))
                      ])
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
