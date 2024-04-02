import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';

class SachtSaz extends StatelessWidget {
  final _show_item_1 = false.obs;
  final _show_item_2 = false.obs;

  SachtSaz({super.key});

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
          child: Image.asset('assets/images/Group 722.png'),
        ),
        const Divider(
          endIndent: 20,
          indent: 20,
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 90,
              width: 180,
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
                'assets/images/Group 74.png',
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 90,
              width: 180,
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
                'assets/images/Group 75.png',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
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
                          _show_item_1.value = !_show_item_1.value;
                        },
                      ),
                    ),
                    const Divider(
                      endIndent: 20,
                      indent: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            'فروش ویژه',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: MAIN_FONT_FAMILY),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
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
              Container(
                margin: EdgeInsets.all(10),
                height: 90,
                width: 147,
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
              Container(
                height: 90,
                width: 147,
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
                  'assets/images/Group 655.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 90,
                width: 147,
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
                  'assets/images/Group 654.png',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Obx buildItem1() {
    return Obx(() => _show_item_1.isTrue
        ? Column(
            children: [
              Image.asset('assets/images/Group 778.png'),
              const SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                  height: 98,
                  width: 180,
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
                      width: 0.1,
                    ),
                  ),
                  child: Image.asset('assets/images/Group 768.png'),
                ),
                Container(
                  height: 98,
                  width: 180,
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
                        width: 0.1,
                      )),
                  child: Image.asset('assets/images/Group 767.png'),
                ),
              ])
            ],
          )
        : const SizedBox.shrink());
  }
}
