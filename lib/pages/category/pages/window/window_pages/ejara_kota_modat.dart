import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class EjaraKotaModat extends StatelessWidget {
  final _show_item_1 = false.obs;

  EjaraKotaModat({super.key});

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
          child: Image.asset(
            'assets/images/Group 694.png',
            fit: BoxFit.fill,
          ),
        ),
        const Divider(
          endIndent: 20,
          indent: 20,
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: 90,
                width: MediaQuery.of(context).size.width * 1 / 2.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/Group kjotavila.png',
                )),
            Container(
                height: 90,
                width: MediaQuery.of(context).size.width * 1 / 2.2,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/Group kjotaparteman.png',
                )),
          ],
        ),
        const SizedBox(
          height: 20,
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
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: const Color.fromRGBO(
                  234,
                  234,
                  234,
                  1,
                ))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => IconButton(
                          icon: _show_item_1.value
                              ? SvgPicture.asset('assets/images/down.svg')
                              : SvgPicture.asset('assets/images/=.svg'),
                          style: const ButtonStyle(),
                          onPressed: () {
                            _show_item_1.value = !_show_item_1.value;
                          },
                        )),
                    Divider(
                      endIndent: 20,
                      indent: 20,
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Text(
                            'اجاره کوتاه مدت ویلا در شمال',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(
                                  48,
                                  48,
                                  48,
                                  1,
                                ),
                                fontWeight: FontWeight.bold,
                                fontFamily: MAIN_FONT_FAMILY),
                          ),
                        ),
                      ],
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
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    height: 90,
                    width: 147,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/Group 650.svg',
                    )),
              ),
              Container(
                  height: 90,
                  width: 147,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/Group 655.svg',
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 90,
                    width: 147,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/Group 654.svg',
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Obx buildItem1() {
    return Obx(() => _show_item_1.isTrue
        ? Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset('assets/images/Group shomal kota.png'),
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
                        border: Border.all(
                          color: const Color.fromRGBO(183, 183, 183, 1),
                          width: 0.3,
                        ),
                      ),
                      child: const Text(
                        'نوشهر',
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
                          border: Border.all(
                            color: const Color.fromRGBO(183, 183, 183, 1),
                            width: 0.3,
                          )),
                      child: const Text(
                        'رامسر',
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
                          border: Border.all(
                            color: const Color.fromRGBO(183, 183, 183, 1),
                            width: 0.3,
                          )),
                      child: const Text(
                        'کلاردشت',
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
                          border: Border.all(
                            color: const Color.fromRGBO(183, 183, 183, 1),
                            width: 0.3,
                          )),
                      child: const Text(
                        'گیلان',
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
                          border: Border.all(
                            color: const Color.fromRGBO(183, 183, 183, 1),
                            width: 0.3,
                          )),
                      child: const Text(
                        'چالوس',
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
                          border: Border.all(
                            color: const Color.fromRGBO(183, 183, 183, 1),
                            width: 0.3,
                          )),
                      child: const Text(
                        'رشت',
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
          )
        : const SizedBox.shrink());
  }
}
