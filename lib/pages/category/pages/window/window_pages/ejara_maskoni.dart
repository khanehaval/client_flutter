import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EjaraMaskoni extends StatelessWidget {
  final _show_item_1 = false.obs;

  EjaraMaskoni({super.key});

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
            child: SvgPicture.asset(
              'assets/images/Group 699.svg',
            )),
        dividerwidget(),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                height: 100,
                width: 175,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.01),
                    )
                  ],
                ),
                child: Image.asset('assets/images/Group 753.png')),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                  height: 90,
                  width: 175,
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
                    'assets/images/Group 752.svg',
                  )),
            ),
          ],
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
            decoration: BoxDecoration(
                gradient: const LinearGradient(colors: GRADIANT_COLOR3),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(1.5),
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
                          'اجاره آپارتمان بر اساس متراژ',
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
            ),
          ),
        ),
        buildItem1(),
        const SizedBox(
          height: 10,
        ),
        dividerwidget(),
        SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                    width: 165,
                    height: 76,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: GRADIANT_COLOR3),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(1.5),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: SvgPicture.asset(
                              'assets/images/markazmoshavere.svg',
                            ),
                          ),
                        ),
                      ),
                    )),
              ),
              Container(
                  width: 165,
                  height: 76,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: GRADIANT_COLOR3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.5),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: SvgPicture.asset(
                            'assets/images/Group 654.svg',
                          ),
                        ),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(colors: GRADIANT_COLOR3)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.2),
                    child: Container(
                        width: 165,
                        height: 74,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            'assets/images/Group 631.svg',
                          ),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Obx buildItem1() {
    return Obx(() => _show_item_1.isTrue
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

  Divider dividerwidget() {
    return const Divider(
      endIndent: 20,
      indent: 20,
      color: Color.fromRGBO(236, 236, 236, 1),
    );
  }
}
