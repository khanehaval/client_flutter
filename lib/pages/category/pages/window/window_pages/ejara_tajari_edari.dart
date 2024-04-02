import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';

class EjaraTagariEdari extends StatelessWidget {
  final _show_item_1 = false.obs;
  final _show_item_2 = false.obs;

  EjaraTagariEdari({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          endIndent: 20,
          indent: 20,
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          height: 153,
          width: 372,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
              ]),
          child: Image.asset('assets/images/Group 724.png'),
        ),
        const Divider(
          endIndent: 20,
          indent: 20,
        ),
        SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 90,
                  width: 147,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/sanati.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: 90,
                width: 147,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Image.asset(
                  'assets/images/maqazeh.png',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 90,
                  width: 147,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/rahn_760.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          endIndent: 20,
          indent: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => IconButton(
                      icon: _show_item_1.value
                          ? const Icon(
                              Icons.keyboard_double_arrow_down_outlined,
                              size: 25,
                            )
                          : const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        _show_item_1.value = !_show_item_1.value;
                      },
                    )),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    ' فروش بر اساس قیمت',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
              ],
            ),
          ),
        ),
        buildItem1(),
        const SizedBox(
          height: 10,
        ),
        const Divider(
          endIndent: 20,
          indent: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => IconButton(
                      icon: _show_item_2.value
                          ? const Icon(
                              Icons.keyboard_double_arrow_down_outlined,
                              size: 25,
                            )
                          : const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        _show_item_2.value = !_show_item_2.value;
                      },
                    )),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'فروش بر اساس متراژ',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildItem2(),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 90,
                  width: 147,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/Group 654.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                height: 90,
                width: 147,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Image.asset(
                  'assets/images/Group 649.png',
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 90,
                  width: 147,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Image.asset(
                    'assets/images/Group 650.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Obx buildItem1() {
    return Obx(
      () => _show_item_1.isTrue
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 57,
                          width: 176,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                )
                              ],
                              border: Border.all(
                                color: Colors.black45,
                                width: 0.3,
                              )),
                          child: const Text(
                            'تا 100 میلیون تومان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontFamily: MAIN_FONT_FAMILY,
                              fontWeight: FontWeight.w300,
                              height: 4,
                            ),
                          ),
                        ),
                        Container(
                          height: 57,
                          width: 176,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                )
                              ],
                              border: Border.all(
                                color: Colors.black45,
                                width: 0.3,
                              )),
                          child: const Text(
                            'تا 50 میلیون تومان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontFamily: MAIN_FONT_FAMILY,
                              fontWeight: FontWeight.w300,
                              height: 4,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 57,
                          width: 176,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                )
                              ],
                              border: Border.all(
                                color: Colors.black45,
                                width: 0.3,
                              )),
                          child: const Text(
                            'تا 200 میلیون تومان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontFamily: MAIN_FONT_FAMILY,
                              fontWeight: FontWeight.w300,
                              height: 4,
                            ),
                          ),
                        ),
                        Container(
                          height: 57,
                          width: 176,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                )
                              ],
                              border: Border.all(
                                color: Colors.black45,
                                width: 0.3,
                              )),
                          child: const Text(
                            'تا 150 میلیون تومان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontFamily: MAIN_FONT_FAMILY,
                              fontWeight: FontWeight.w300,
                              height: 4,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 57,
                          width: 176,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                )
                              ],
                              border: Border.all(
                                color: Colors.black45,
                                width: 0.3,
                              )),
                          child: const Text(
                            'تا 250 میلیون تومان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontFamily: MAIN_FONT_FAMILY,
                              fontWeight: FontWeight.w300,
                              height: 4,
                            ),
                          ),
                        ),
                        Container(
                          height: 57,
                          width: 176,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 10,
                                )
                              ],
                              border: Border.all(
                                color: Colors.black45,
                                width: 0.3,
                              )),
                          child: const Text(
                            'تا 200 میلیون تومان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontFamily: MAIN_FONT_FAMILY,
                              fontWeight: FontWeight.w300,
                              height: 4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ]),
            )
          : const SizedBox.shrink(),
    );
  }

  Obx _buildItem2() {
    return Obx(() => _show_item_2.isTrue
        ? Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 57,
                    width: 176,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                          )
                        ],
                        border: Border.all(
                          color: Colors.black45,
                          width: 0.3,
                        )),
                    child: const Text(
                      'تا 60 متر مربع',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                        fontWeight: FontWeight.w300,
                        height: 4,
                      ),
                    ),
                  ),
                  Container(
                    height: 57,
                    width: 176,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 10,
                          )
                        ],
                        border: Border.all(
                          color: Colors.black45,
                          width: 0.3,
                        )),
                    child: const Text(
                      'تا 50 متر مربع',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                        fontWeight: FontWeight.w300,
                        height: 4,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 57,
                    width: 176,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                          )
                        ],
                        border: Border.all(
                          color: Colors.black45,
                          width: 0.3,
                        )),
                    child: const Text(
                      'تا 80 متر مربع',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                        fontWeight: FontWeight.w300,
                        height: 4,
                      ),
                    ),
                  ),
                  Container(
                    height: 57,
                    width: 176,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 10,
                          )
                        ],
                        border: Border.all(
                          color: Colors.black45,
                          width: 0.3,
                        )),
                    child: const Text(
                      'تا 70 متر مربع',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                        fontWeight: FontWeight.w300,
                        height: 4,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 57,
                    width: 176,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                          )
                        ],
                        border: Border.all(
                          color: Colors.black45,
                          width: 0.3,
                        )),
                    child: const Text(
                      'تا 100 متر مربع',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                        fontWeight: FontWeight.w300,
                        height: 4,
                      ),
                    ),
                  ),
                  Container(
                    height: 57,
                    width: 176,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 10,
                          )
                        ],
                        border: Border.all(
                          color: Colors.black45,
                          width: 0.3,
                        )),
                    child: const Text(
                      'تا 90 متر مربع',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: MAIN_FONT_FAMILY,
                        fontWeight: FontWeight.w300,
                        height: 4,
                      ),
                    ),
                  ),
                ],
              )
            ]))
        : const SizedBox.shrink());
  }
}
