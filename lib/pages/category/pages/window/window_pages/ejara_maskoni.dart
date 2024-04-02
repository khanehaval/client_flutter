import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';

class EjaraMaskoni extends StatelessWidget {
  final _show_item_1 = false.obs;

  EjaraMaskoni({super.key});

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
          width: MediaQuery.of(context).size.width * 1 / 1,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.01),
                ),
              ]),
          child: Image.asset('assets/images/Group_699.png'),
        ),
        Divider(
          endIndent: 20,
          indent: 20,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 90,
                width: 171,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.01),
                    )
                  ],
                ),
                child: Image.asset(
                  'assets/images/Group 650.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: 90,
              width: 181,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.01),
                  )
                ],
              ),
              child: Image.asset(
                'assets/images/Group 649.png',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
        Divider(
          endIndent: 20,
          indent: 20,
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), border: Border.all()),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(
                    () => IconButton(
                      icon: _show_item_1.value
                          ? const Icon(
                              Icons.keyboard_double_arrow_down_outlined,
                              size: 25,
                            )
                          : const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        _show_item_1.value = !_show_item_1.isTrue;
                      },
                    ),
                  ),
                  Divider(
                    endIndent: 20,
                    indent: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'اجاره آپارتمان بر اساس متراژ',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Iran Sans Bold,'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        buildItem1(),
        const SizedBox(
          height: 10,
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
                    'assets/images/Group 651.png',
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
                  'assets/images/Group 655.png',
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
                    'assets/images/Group 654.png',
                    fit: BoxFit.fill,
                  ),
                ),
              )
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          child: Text(
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
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 57,
                        width: 176,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.01),
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
                                color: Colors.grey.withOpacity(.01),
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
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 57,
                            width: 176,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.01),
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
                                    color: Colors.grey.withOpacity(.01),
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
                      ),
                    ],
                  ),
                ],
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
