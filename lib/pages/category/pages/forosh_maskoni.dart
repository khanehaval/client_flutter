import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForoshMaskoni extends StatelessWidget {
  final _show_item_1 = false.obs;
  final _show_item_2 = false.obs;
  final _show_item_3 = false.obs;

  ForoshMaskoni({super.key});

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
          height: 149,
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
          child: Image.asset('assets/images/Group 667.png'),
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
                    'assets/images/Group 759.png',
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
                  'assets/images/Group 758.png',
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
                    'assets/images/Group 648.png',
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
                    'فروش آپارتمان بر اساس قیمت',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Iran Sans Bold,'),
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
                    'فروش آپارتمان بر اساس متراژ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Iran Sans Bold,'),
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
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), border: Border.all()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(() => IconButton(
                      icon: _show_item_3.value
                          ? const Icon(
                              Icons.keyboard_double_arrow_down_outlined,
                              size: 25,
                            )
                          : const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        _show_item_3.value = !_show_item_3.value;
                      },
                    )),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'خرید ویلا در شمال',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Iran Sans Bold,'),
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildItem3()
      ],
    );
  }

  Obx buildItem1() {
    return Obx(
      () => _show_item_1.isTrue
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: Column(children: [
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
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
                            child: Text(
                              'تا 500 میلیون تومان',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 14,
                                fontFamily: 'Iran Sans Bold',
                                fontWeight: FontWeight.w300,
                                height: 4,
                              ),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(0),
                        child: Container(
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
                          child: Text(
                            'تا 100 میلیون تومان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 14,
                              fontFamily: 'Iran Sans Bold',
                              fontWeight: FontWeight.w300,
                              height: 4,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
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
                        child: Text(
                          'تا 2 میلیارد تومان',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 14,
                            fontFamily: 'Iran Sans Bold',
                            fontWeight: FontWeight.w300,
                            height: 4,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
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
                        child: Text(
                          'تا 1 میلیارد تومان',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 14,
                            fontFamily: 'Iran Sans Bold',
                            fontWeight: FontWeight.w300,
                            height: 4,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
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
                        child: Text(
                          'تا 4 میلیارد تومان',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 14,
                            fontFamily: 'Iran Sans Bold',
                            fontWeight: FontWeight.w300,
                            height: 4,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(0),
                      child: Container(
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
                        child: Text(
                          'تا 3 میلیارد تومان',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 14,
                            fontFamily: 'Iran Sans Bold',
                            fontWeight: FontWeight.w300,
                            height: 4,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
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
              Column(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Column(children: [
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(5),
                                child: Container(
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
                                  child: Text(
                                    'تا 100 متر مربع',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF303030),
                                      fontSize: 14,
                                      fontFamily: 'Iran Sans Bold',
                                      fontWeight: FontWeight.w300,
                                      height: 4,
                                    ),
                                  ),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
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
                                child: Text(
                                  'تا 50 متر مربع',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 14,
                                    fontFamily: 'Iran Sans Bold',
                                    fontWeight: FontWeight.w300,
                                    height: 4,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
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
                              child: Text(
                                'تا 200 متر مربع',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 14,
                                  fontFamily: 'Iran Sans Bold',
                                  fontWeight: FontWeight.w300,
                                  height: 4,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Container(
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
                              child: Text(
                                'تا 150 متر مربع',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 14,
                                  fontFamily: 'Iran Sans Bold',
                                  fontWeight: FontWeight.w300,
                                  height: 4,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
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
                              child: Text(
                                'تا 300 متر مربع',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 14,
                                  fontFamily: 'Iran Sans Bold',
                                  fontWeight: FontWeight.w300,
                                  height: 4,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(0),
                            child: Container(
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
                              child: Text(
                                'تا 250 متر مربع',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFF303030),
                                  fontSize: 14,
                                  fontFamily: 'Iran Sans Bold',
                                  fontWeight: FontWeight.w300,
                                  height: 4,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  )
                ],
              ),
            ]),
          )
        : SizedBox.shrink());
  }

  Obx _buildItem3() {
    return Obx(
      () => _show_item_3.isTrue
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Group 631.png',
                    width: 372,
                    height: 150,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Container(
                                    height: 98,
                                    width: 180,
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
                                          color: Colors.blue,
                                          // Initial border color
                                          width: 0.7,
                                        )),
                                    child: Image.asset(
                                        'assets/images/Group 655.png',
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
                                height: 98,
                                width: 180,
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
                                      color: Colors.blue,
                                      // Initial border color
                                      width: 0.7,
                                    )),
                                child: Image.asset(
                                    'assets/images/Group 654.png',
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Obx(() => _show_item_3.isTrue
                    ? Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(children: [
                          Image.asset(
                            'assets/images/Group 631.png',
                            width: 372,
                            height: 150,
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: Container(
                                            height: 98,
                                            width: 180,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.1),
                                                    spreadRadius: 1,
                                                    blurRadius: 10,
                                                  )
                                                ],
                                                border: Border.all(
                                                  color: Colors.blue,
                                                  // Initial border color
                                                  width: 0.7,
                                                )),
                                            child: Image.asset(
                                                'assets/images/Group 655.png',
                                                fit: BoxFit.fill),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(0),
                                      child: Container(
                                        height: 98,
                                        width: 180,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey
                                                    .withOpacity(0.1),
                                                spreadRadius: 1,
                                                blurRadius: 10,
                                              )
                                            ],
                                            border: Border.all(
                                              color: Colors.blue,
                                              // Initial border color
                                              width: 0.7,
                                            )),
                                        child: Image.asset(
                                            'assets/images/Group 654.png',
                                            fit: BoxFit.fill),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ]))
                    : SizedBox.shrink())
              ],
            ),
    );
  }
}
