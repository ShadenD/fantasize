// ignore_for_file: camel_case_types, non_constant_identifier_names, must_be_immutable

import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:flutter/material.dart';

class order_history extends StatelessWidget {
  order_history({super.key});
  String dollar_sign = '\$';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Logo(),
        leading: const Frame(),
      ),
      body: Column(
        children: [
          Expanded(
              child: SizedBox(
            // color: Color.fromARGB(255, 233, 33, 19),
            height: MediaQuery.of(context).size.height * 1.9,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(
                          top: 20, bottom: 20, left: 5, right: 1),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Container(
                            margin: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                            child: const Text(
                              'Golden Crescent Hoop Earrings',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                          ),
                          trailing: Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                            child: const Column(
                              children: [
                                InkWell(
                                  child: Text(
                                    '27/3',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * 0.3,
                              child: Image.asset(
                                'assets/images/Image.png',
                                width: MediaQuery.of(context).size.width * 0.17,
                                height:
                                    MediaQuery.of(context).size.height * 0.3,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          subtitle: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 160, 0),
                                child: const Text(
                                  'Dress modern',
                                  style: TextStyle(fontSize: 8),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Row(children: [
                                    Text(dollar_sign),
                                    const Text('212.99'),
                                  ]),
                                ],
                              )
                            ],
                          ),
                        );
                      }),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
