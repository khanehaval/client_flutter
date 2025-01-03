import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/consultants.dart/list_consultants.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/consultants.dart/map_agency/list_agency.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ForoshTagariEdari extends StatelessWidget {
  final _show_item_1 = false.obs;
  final _show_item_2 = false.obs;

  ForoshTagariEdari({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        dividerwidget(),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          height: 153,
          width: Get.width / 1.1,
          child: Image.asset('assets/images/Group 720.png'),
        ),
        const SizedBox(
          height: 10,
        ),
        dividerwidget(),
        const SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(
                width: 20,
              ),
              _buildRowItem1('assets/images/Group 762.svg'),
              const SizedBox(
                width: 10,
              ),
              _buildRowItem1('assets/images/Group 761.svg'),
              const SizedBox(
                width: 10,
              ),
              _buildRowItem1('assets/images/Group 760.svg'),
              const SizedBox(
                width: 20,
              ),
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
          padding: const EdgeInsets.symmetric(horizontal: 15),
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
                        'فروش بر اساس قیمت',
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
        dividerwidget(),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
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
                        'فروش بر اساس متراژ',
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
          height: 10,
        ),
        dividerwidget(),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: Get.width / 2.3,
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const ListConsultants(),
                      duration: const Duration(milliseconds: 300),
                      transition: Transition.leftToRight);
                },
                child: _buildRowItem(
                  'assets/images/moshaver_amlak.svg',
                ),
              ),
            ),
            SizedBox(
                width: Get.width / 2.3,
                child: GestureDetector(
                    onTap: () {
                      Get.to(() => const ListAgency(),
                          duration: const Duration(milliseconds: 300),
                          transition: Transition.leftToRight);
                    },
                    child: _buildRowItem('assets/images/axhans_amlak1.svg'))),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Padding _builrRowItem2(String asset) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: SvgPicture.asset(
          asset,
        ));
  }

  _buildRowItem(String asset) {
    return Row(
      children: [
        SvgPicture.asset(
          asset,
          width: Get.width / 2.3,
        ),
      ],
    );
  }

  _buildRowItem1(String asset) {
    return Row(
      children: [
        SvgPicture.asset(
          asset,
          width: Get.width / 2.6,
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
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 57,
                        width: Get.width / 2.3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black45,
                              width: 0.3,
                            )),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'تا ۵۰۰ میلیون تومان',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 12,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Container(
                        height: 57,
                        width: Get.width / 2.3,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: Colors.black45,
                              width: 0.3,
                            )),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'تا ۱۰۰ میلیون تومان',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF303030),
                                fontSize: 12,
                                fontFamily: MAIN_FONT_FAMILY,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 57,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3,
                          )),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'تا ۲ میلیارد تومان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 12,
                              fontFamily: MAIN_FONT_FAMILY,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 57,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3,
                          )),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'تا ۱ میلیارد تومان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 12,
                              fontFamily: MAIN_FONT_FAMILY,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 57,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3,
                          )),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'تا ۴ میلیارد تومان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 12,
                              fontFamily: MAIN_FONT_FAMILY,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Container(
                      height: 57,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3,
                          )),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'تا ۳ میلیارد تومان',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 12,
                              fontFamily: MAIN_FONT_FAMILY,
                            ),
                          ),
                        ],
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
      width: Get.width / 2.3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black45,
            width: 0.3,
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF303030),
              fontSize: 12,
              fontFamily: MAIN_FONT_FAMILY,
            ),
          ),
        ],
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
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buidText('تا ۵۰ متر مربع'),
                    const SizedBox(
                      width: 2,
                    ),
                    _buidText('تا ۶۰ متر مربع'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buidText('تا ۸۰ متر مربع'),
                    const SizedBox(
                      width: 2,
                    ),
                    _buidText('تا ۷۰ متر مربع'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buidText('تا ۱۰۰ متر مربع'),
                    const SizedBox(
                      width: 2,
                    ),
                    _buidText('تا ۹۰ متر مربع'),
                  ],
                )
              ],
            ),
          )
        : const SizedBox.shrink());
  }

  Divider dividerwidget() {
    return const Divider(
      endIndent: 20,
      indent: 20,
      color: Color.fromRGBO(236, 236, 236, 1),
    );
  }
}
