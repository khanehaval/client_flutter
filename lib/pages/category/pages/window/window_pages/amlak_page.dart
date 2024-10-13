import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/consultants.dart/map_agency/list_agency.dart';
import 'package:flutter_application_1/pages/category/pages/Advertisements/consultants.dart/list_consultants.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class AmlakPage extends StatelessWidget {
  final _show_item_1 = false.obs;
  final _show_item_2 = false.obs;
  AmlakPage({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        dividerwidget(),
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
        dividerwidget(),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: Get.width / 2.2,
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
                  width: Get.width / 2.2,
                  child: GestureDetector(
                      onTap: () {
                        Get.to(() => const ListAgency(),
                            duration: const Duration(milliseconds: 300),
                            transition: Transition.leftToRight);
                      },
                      child: _buildRowItem('assets/images/axhans_amlak1.svg'))),
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
        GestureDetector(
            onTap: () {
              _show_item_1.value = !_show_item_1.value;
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: GRADIANT_COLOR3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.2),
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
                                  fontSize: 14,
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
        dividerwidget(),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: () {
            _show_item_2.value = !_show_item_2.value;
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
                decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: GRADIANT_COLOR3),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(1.2),
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
                                _show_item_2.value
                                    ? 'assets/images/down.svg'
                                    : 'assets/images/=.svg',
                              ),
                              onPressed: () {
                                _show_item_2.value = !_show_item_2.value;
                              },
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 15.0),
                            child: Text(
                              'خانه اول',
                              style: TextStyle(
                                fontSize: 14,
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
          ),
        ),
        _buildItem2(),
        const SizedBox(
          height: 20,
        )
      ],
    );
  }

  Divider dividerwidget() {
    return const Divider(
      endIndent: 20,
      indent: 20,
      color: Color.fromRGBO(236, 236, 236, 1),
    );
  }

  Obx buildItem1() {
    return Obx(
      () => _show_item_1.isTrue
          ? Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/Group 778.png',
                  width: Get.width / 1.1,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 80,
                              width: Get.width / 2.2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: SvgPicture.asset(
                                'assets/images/Group 768.svg',
                              )),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                              height: 80,
                              width: Get.width / 2.2,
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
                const SizedBox(
                  height: 10,
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
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/images/Group 631.png',
                  width: Get.width / 1.1,
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }

  Padding _buildRowItem(String asset) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: SvgPicture.asset(
          asset,
        ));
  }
}
