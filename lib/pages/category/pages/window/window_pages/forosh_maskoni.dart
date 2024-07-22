import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ForoshMaskoni extends StatelessWidget {
  final _show_item_1 = false.obs;
  final _show_item_2 = false.obs;
  final _show_item_3 = false.obs;

  ForoshMaskoni({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(
          height: 10,
        ),
        dividerwidget(),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          height: 149,
          width: 372,
          child: Image.asset('assets/images/Group 667.png'),
        ),
        dividerwidget(),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                  height: 90,
                  width: 176,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/Group 759.svg',
                  )),
              const SizedBox(
                height: 10,
              ),
              Container(
                  height: 90,
                  width: 176,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/Group 758.svg',
                  )),
              Container(
                  height: 90,
                  width: 176,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/Group 757.svg',
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        dividerwidget(),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(colors: GRADIANT_COLOR3)),
            child: Padding(
              padding: const EdgeInsets.all(1.2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => IconButton(
                          icon: _show_item_1.value
                              ? SvgPicture.asset('assets/images/down.svg')
                              : SvgPicture.asset(
                                  'assets/images/=.svg',
                                ),
                          style: const ButtonStyle(),
                          onPressed: () {
                            _show_item_1.value = !_show_item_1.value;
                          },
                        )),
                    const Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Text(
                        'فروش آپارتمان بر اساس قیمت',
                        style: TextStyle(
                            fontSize: 14,
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
              ),
            ),
          ),
        ),
        buildItem1(),
        const SizedBox(
          height: 10,
        ),
        dividerwidget(),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                gradient: LinearGradient(colors: GRADIANT_COLOR3)),
            child: Padding(
              padding: const EdgeInsets.all(1.2),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() => IconButton(
                          icon: _show_item_2.value
                              ? SvgPicture.asset('assets/images/down.svg')
                              : SvgPicture.asset(
                                  'assets/images/=.svg',
                                ),
                          style: const ButtonStyle(),
                          onPressed: () {
                            _show_item_2.value = !_show_item_2.value;
                          },
                        )),
                    const Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Text(
                        'خرید ویلا در شمال',
                        style: TextStyle(
                            fontSize: 14,
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
              ),
            ),
          ),
        ),
        _buildItem2(),
        const SizedBox(
          height: 20,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 57,
                        width: 176,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black45,
                              width: 0.3,
                            )),
                        child: const Text(
                          'تا ۵۰۰ میلیون تومان',
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
                              color: Colors.black45,
                              width: 0.3,
                            )),
                        child: const Text(
                          'تا ۱۰۰ میلیون تومان',
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 57,
                      width: 176,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3,
                          )),
                      child: const Text(
                        'تا ۲ میلیارد تومان',
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
                            color: Colors.black45,
                            width: 0.3,
                          )),
                      child: const Text(
                        'تا ۱ میلیارد تومان',
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
                            color: Colors.black45,
                            width: 0.3,
                          )),
                      child: const Text(
                        'تا ۴ میلیارد تومان',
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
                            color: Colors.black45,
                            width: 0.3,
                          )),
                      child: const Text(
                        'تا ۳ میلیارد تومان',
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
              ]),
            )
          : const SizedBox.shrink(),
    );
  }

  Widget _buidText(String text) {
    return Container(
      height: 57,
      width: 176,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black45,
            width: 0.3,
          )),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Color(0xFF303030),
          fontSize: 14,
          fontFamily: MAIN_FONT_FAMILY,
          fontWeight: FontWeight.w300,
          height: 4,
        ),
      ),
    );
  }

  Obx _buildItem2() {
    return Obx(() => _show_item_2.isTrue
        ? Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 17,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buidText('تا ۵۰ متر مربع'),
                    _buidText('تا ۶۰ متر مربع'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buidText('تا ۸۰ متر مربع'),
                    _buidText('تا ۷۰ متر مربع'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buidText('تا ۱۰۰ متر مربع'),
                    _buidText('تا ۹۰ متر مربع'),
                  ],
                )
              ],
            ),
          )
        : const SizedBox.shrink());
  }

  Obx _buildItem3() {
    return Obx(
      () => _show_item_3.isTrue
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Group 628.png',
                    width: 372,
                    height: 150,
                  ),
                  SingleChildScrollView(
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                    height: 76,
                                    width: 134,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/images/Group 755.svg',
                                      fit: BoxFit.fill,
                                    )),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                    height: 76,
                                    width: 134,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/images/Group 652.svg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Container(
                                  height: 76,
                                  width: 134,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/images/Group 653.svg',
                                    fit: BoxFit.cover,
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Obx(() => _show_item_3.isTrue
                    ? Column(children: [
                        Image.asset(
                          'assets/images/Group 654.png',
                          width: 372,
                          height: 150,
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Container(
                                    height: 98,
                                    width: 170,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.black,
                                          // Initial border color
                                          width: 0.7,
                                        )),
                                    child: Image.asset(
                                        'assets/images/Group 655.png',
                                        fit: BoxFit.fill),
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
                                          border: Border.all(
                                            color: Colors.blue,
                                            // Initial border color
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
                      ])
                    : const SizedBox.shrink())
              ],
            ),
    );
  }

  Divider dividerwidget() {
    return const Divider(
      endIndent: 20,
      indent: 20,
      color: Color.fromRGBO(236, 236, 236, 1),
    );
  }
}
