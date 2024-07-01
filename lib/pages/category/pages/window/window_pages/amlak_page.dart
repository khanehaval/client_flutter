import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
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
            child: SvgPicture.asset('assets/images/Group 658.svg')),
        const Divider(
          endIndent: 20,
          indent: 20,
        ),
        SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _buildRowItem('assets/images/axhans_amlak.svg'),
              _buildRowItem('assets/images/moshaver_amlak.svg'),
              _buildRowItem('assets/images/kharid_khaneh.svg'),
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
        GestureDetector(
            onTap: () {
              _show_item_1.value = !_show_item_1.value;
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: GRADIANT_COLOR3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Obx(
                              () => IconButton(
                                icon: SvgPicture.asset(
                                  _show_item_1.value
                                      ? 'assets/images/down.svg'
                                      : 'assets/images/=.svg',
                                ),
                                onPressed: () {
                                  _show_item_1.value = !_show_item_1.value;
                                },
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 15.0),
                              child: Text(
                                'فروش ویژه',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromRGBO(
                                    48,
                                    48,
                                    48,
                                    1,
                                  ),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: MAIN_FONT_FAMILY,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
            )),
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
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: const Color.fromRGBO(
                234,
                234,
                234,
                1,
              ))),
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
                  'خانه اول',
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
                              height: 90,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: SvgPicture.asset(
                                'assets/images/Group 768.svg',
                              )),
                          Container(
                              height: 90,
                              width: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: SvgPicture.asset(
                                'assets/images/Group 767.svg',
                              )),
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
                          SizedBox(
                            height: 90,
                            width: 165,
                            child: SvgPicture.asset(
                              'assets/images/Group 655.svg',
                            ),
                          ),
                          SizedBox(
                            height: 90,
                            width: 165,
                            child: SvgPicture.asset(
                              'assets/images/Group 654.svg',
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

  Padding _buildRowItem(String asset) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: SvgPicture.asset(
          asset,
        ));
  }
}
