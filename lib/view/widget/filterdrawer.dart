// ignore_for_file: camel_case_types, must_be_immutable

import 'package:fantasize/controller/drawerController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: use_key_in_widget_constructors
class Filter_MyDrawer extends GetView<Drawer_Controller> {
  Drawer_Controller drawerController = Get.put(Drawer_Controller());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(
              height: 120,
              child: DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(children: [
                  Container(
                    // color: Colors.red,
                    margin: const EdgeInsets.fromLTRB(90, 20, 0, 0),
                    child: const Text(
                      'Filter',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(40, 20, 0, 0),
                      child: IconButton(
                          onPressed: () {
                            controller.closeDrawer();
                          },
                          icon: const Icon(
                            Icons.close,
                            size: 30,
                          )))
                ]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Theme(
                data: ThemeData(
                  dividerColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent, // Hide the border
                ),
                child: Focus(
                    autofocus: false,
                    child: Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: const ExpansionTile(
                          title: Text(
                        'Style',
                        style: TextStyle(fontSize: 20),
                      )),
                    ))),
            Theme(
                data: ThemeData(
                  dividerColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent, // Hide the border
                ),
                child: Focus(
                    autofocus: false,
                    child: Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: const ExpansionTile(
                          title: Text(
                        'Type',
                        style: TextStyle(fontSize: 20),
                      )),
                    ))),
            Theme(
                data: ThemeData(
                  dividerColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent, // Hide the border
                ),
                child: Focus(
                    autofocus: false,
                    child: Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: const ExpansionTile(
                          title: Text(
                        'Material',
                        style: TextStyle(fontSize: 18),
                      )),
                    ))),
            Theme(
                data: ThemeData(
                  dividerColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent, // Hide the border
                ),
                child: Focus(
                    autofocus: false,
                    child: Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: const ExpansionTile(
                          title: Text(
                        'Color',
                        style: TextStyle(fontSize: 20),
                      )),
                    ))),
            Theme(
                data: ThemeData(
                  dividerColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent, // Hide the border
                ),
                child: Focus(
                    autofocus: false,
                    child: Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: const ExpansionTile(
                          title: Text(
                        'Size',
                        style: TextStyle(fontSize: 20),
                      )),
                    ))),
            Theme(
                data: ThemeData(
                  dividerColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent, // Hide the border
                ),
                child: Focus(
                    autofocus: false,
                    child: Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: ExpansionTile(
                        title: const Text(
                          'Brands',
                          style: TextStyle(fontSize: 20),
                        ),
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                // color: Colors.red,
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: Image.asset(
                                  'assets/images/Rectangle 730.png',
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                // color: Colors.red,
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: Image.asset(
                                  'assets/images/Rectangle 731.png',
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                // color: Colors.red,
                                width: MediaQuery.of(context).size.width * 0.2,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: Image.asset(
                                  'assets/images/Rectangle 732.png',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ))),
            Theme(
                data: ThemeData(
                  dividerColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent, // Hide the border
                ),
                child: Focus(
                    autofocus: false,
                    child: Container(
                      margin: const EdgeInsets.only(left: 12),
                      child: ExpansionTile(
                        title: const Text(
                          'Price Range',
                          style: TextStyle(fontSize: 20),
                        ),
                        children: [
                          Obx(
                            () => Stack(
                              alignment: Alignment.center,
                              children: [
                                SliderTheme(
                                  data: SliderTheme.of(context).copyWith(
                                    trackHeight: 1,
                                    overlayShape: const RoundSliderOverlayShape(
                                      overlayRadius: 25.0,
                                    ),
                                    activeTrackColor: Colors.black,
                                    activeTickMarkColor: Colors.transparent,
                                    thumbColor:
                                        const Color.fromARGB(255, 252, 76, 92),
                                  ),
                                  child: SizedBox(
                                    width: 330,
                                    height: 100,
                                    child: RangeSlider(
                                      max: 1500,
                                      min: 1,
                                      labels: RangeLabels(
                                        controller.values.value.start
                                            .round()
                                            .toString(),
                                        controller.values.value.end
                                            .round()
                                            .toString(),
                                      ),
                                      values: controller.values.value,
                                      onChanged: (values) {
                                        controller.values.value = values;
                                      },
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 20,
                                  top: 10,
                                  bottom: 0,
                                  child: Text(
                                    controller.values.value.start
                                        .round()
                                        .toString(),
                                    style: const TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                ),
                                Positioned(
                                  right: 20,
                                  top: 10,
                                  bottom: 10,
                                  child: Text(
                                    controller.values.value.end
                                        .round()
                                        .toString(),
                                    style: const TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ))),
            const SizedBox(
              height: 20,
            ),
            Container(
              // color: Colors.red,
              margin: const EdgeInsets.fromLTRB(90, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 5, 0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        onPressed: () {
                          controller.closeDrawer();
                        },
                        color: Colors.white,
                        textColor: Colors.black,
                        child: const Text(
                          'Close',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 20, 20, 0),
                      child: MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        onPressed: () {
                          controller.closeDrawer();
                        },
                        color: const Color.fromARGB(255, 252, 76, 92),
                        textColor: Colors.white,
                        child: const Text(
                          'Done',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
