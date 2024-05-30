// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class explore extends StatelessWidget {
  const explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.red,
        child: Stack(
          children: [
            Container(
              height: 1000,
              // color: Colors.black,
              margin: const EdgeInsets.only(top: 50),
              child: Image.asset(
                'assets/images/1.gif',
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.9,
              ),
            ),
            Column(
              children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(320, 120, 0, 0),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          size: 40,
                          color: Colors.white,
                        ))),
                Container(
                    margin: const EdgeInsets.fromLTRB(320, 10, 0, 0),
                    child: Transform.rotate(
                      angle: -0.785,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.send_outlined,
                            size: 40,
                            color: Colors.white,
                          )),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
