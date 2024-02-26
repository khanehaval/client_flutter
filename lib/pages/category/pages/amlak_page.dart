import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AmlakPage extends StatelessWidget {
  final _show_item_1 = false.obs;
  final _show_item_2 = false.obs;

  AmlakPage({super.key});

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
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
              ]),
          child: Image.asset('assets/images/Group 658.png'),
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
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 90,
                  width: 147,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(.01),
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
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.01),
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Image.asset(
                  'assets/images/Group 649.png',
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.all(10),
                height: 90,
                width: MediaQuery.of(context).size.width * 0.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.01),
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Image.asset(
                  'assets/images/Group 648.png',
                  fit: BoxFit.fill,
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
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
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
                  'فروش ویژه',
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
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
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
                        : const Icon(
                            CupertinoIcons.chevron_left_2,
                          ),
                    style: const ButtonStyle(),
                    onPressed: () {
                      _show_item_2.value = !_show_item_2.value;
                    },
                  )),
              const Text(
                'خانه اول',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Iran Sans Bold,'),
              ),
            ],
          ),
        ),
        _buildItem2(),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  Obx buildItem1() {
    return Obx(
      () => _show_item_1.isTrue
          ? Column(
              children: [
                Image.asset(
                  'assets/images/Group 778.png',
                  width: 360,
                  height: 150,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 98,
                            width: 182,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                  )
                                ],
                                border: Border.all(
                                  color: Colors.black,
                                  // Initial border color
                                  width: 0.1,
                                )),
                            child: Image.asset(
                              'assets/images/Group 768.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            height: 98,
                            width: 182,
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
                                  color: Colors.black,
                                  // Initial border color
                                  width: 0.1,
                                )),
                            child: Image.asset(
                              'assets/images/Group 767.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }

  Obx _buildItem2() {
    return Obx(
      () => _show_item_2.isTrue
          ? Column(
              children: [
                Image.asset(
                  'assets/images/Group 631.png',
                  width: 360,
                  height: 150,
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 97,
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
                                  color: Colors.black,
                                  // Initial border color
                                  width: 0.1,
                                )),
                            child: Image.asset('assets/images/Group 655.png',
                                fit: BoxFit.fill),
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
                                  )
                                ],
                                border: Border.all(
                                  color: Colors.blue,
                                  width: 0.1,
                                )),
                            child: Image.asset('assets/images/Group 654.png',
                                fit: BoxFit.fill),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}
