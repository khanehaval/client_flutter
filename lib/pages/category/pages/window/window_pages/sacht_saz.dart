import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SachtSaz extends StatelessWidget {
  final _show_item_1 = false.obs;
  final _show_item_2 = false.obs;

  SachtSaz({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.01),
                    )
                  ],
                ),
                child: SvgPicture.asset(
                  'assets/images/Group pishforosh.svg',
                )),
            Container(
                height: 90,
                width: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: SvgPicture.asset(
                  'assets/images/Group sakht.svg',
                )),
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
                    const Divider(
                      endIndent: 20,
                      indent: 20,
                    ),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'فروش ویژه',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(
                                  48,
                                  48,
                                  48,
                                  1,
                                ),
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
              Container(
                  margin: EdgeInsets.all(10),
                  height: 90,
                  width: 147,
                  child: SvgPicture.asset(
                    'assets/images/Group 649.svg',
                  )),
              Container(
                  height: 90,
                  width: 147,
                  child: SvgPicture.asset(
                    'assets/images/Group 652.svg',
                  )),
              Container(
                  margin: EdgeInsets.all(10),
                  height: 90,
                  width: 147,
                  child: SvgPicture.asset(
                    'assets/images/Group 653.svg',
                  )),
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
              Image.asset(
                'assets/images/Group project.png',
                width: 370,
                height: 111,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Container(
                    height: 90,
                    width: 170,
                    child: SvgPicture.asset(
                      'assets/images/Group mehregan.svg',
                    )),
                Container(
                    height: 90,
                    width: 170,
                    child: SvgPicture.asset(
                      'assets/images/Group loshan.svg',
                    )),
              ])
            ],
          )
        : const SizedBox.shrink());
  }
}
