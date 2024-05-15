// ignore_for_file: camel_case_types, must_be_immutable, non_constant_identifier_names

import 'package:fantasize/models/Info_address.dart';
import 'package:fantasize/view/widget/Logo.dart';
import 'package:fantasize/view/widget/bakeframe.dart';
import 'package:flutter/material.dart';

class address_info extends StatelessWidget {
  address_info({super.key});
  List address_data = [
    const address_infoo(
        info1: '47 Oakwood Terrace,',
        info2: 'Willowbrook Street, ',
        info3: 'Northern District,',
        info4: 'Maple City, ',
        info5: 'Greendale Country'),
    const address_infoo(
        info1: '47 Oakwood Terrace',
        info2: 'Willowbrook Street, ',
        info3: 'Northern District,',
        info4: 'Maple City, ',
        info5: 'Greendale Country'),
    const address_infoo(
        info1: '47 Oakwood Terrace,',
        info2: 'Willowbrook Street, ',
        info3: 'Northern District,',
        info4: 'Maple City, ',
        info5: 'Greendale Country')
  ];

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
              child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  // color: Colors.red,
                  width: 500,
                  height: 40,
                  margin: const EdgeInsets.fromLTRB(140, 40, 70, 10),
                  child: const Text(
                    'Addresses',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 252, 76, 92),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 249, 243, 243),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 40),
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.21,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(50, 80, 60, 50),
                          child: const Text(
                            'Address 1',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.circle,
                                  size: 6,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(address_data[index].info1)
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.circle,
                                  size: 6,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(address_data[index].info2)
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.circle,
                                  size: 6,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(address_data[index].info3)
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.circle,
                                  size: 6,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(address_data[index].info4)
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.circle,
                                  size: 6,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(address_data[index].info5)
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                  ]),
                  itemCount: address_data.length,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
