import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:get/get.dart';

class ForoshTagariEdari extends StatelessWidget {
  final _show_item_1 = false.obs;
  final _show_item_2 = false.obs;

  ForoshTagariEdari({super.key});

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
          child: Image.asset('assets/images/Group 720.png'),
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
              _buildRowItem('assets/images/Group 762.png'),
              _buildRowItem('assets/images/Group 761.png'),
              _buildRowItem('assets/images/kar.png'),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Container(
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
                    ' فروش بر اساس قیمت',
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
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Container(
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
                          : const Icon(CupertinoIcons.chevron_left_2),
                      onPressed: () {
                        _show_item_2.value = !_show_item_2.value;
                      },
                    )),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'فروش بر اساس متراژ',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: MAIN_FONT_FAMILY),
                  ),
                ),
              ],
            ),
          ),
        ),
        _buildItem2(),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          reverse: true,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _builrRowItem2('assets/images/Group 653.png'),
              _builrRowItem2('assets/images/Group 649.png'),
              _builrRowItem2('assets/images/Group 650.png'),
            ],
          ),
        ),
      ],
    );
  }

  Padding _builrRowItem2(String asset) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Image.asset(
        asset,
        fit: BoxFit.fill,
      ),
    );
  }

  Padding _buildRowItem(String asset) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Image.asset(
        asset,
        fit: BoxFit.fill,
      ),
    );
  }

  Obx buildItem1() {
    return Obx(
      () => _show_item_1.isTrue
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buidText('تا 100 میلیون تومان'),
                      _buidText('تا 50 میلیون تومان')
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buidText('تا 200 میلیون تومان'),
                      _buidText('تا 150 میلیون تومان'),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buidText('تا 250 میلیون تومان'),
                      _buidText('تا 200 میلیون تومان'),
                    ],
                  ),
                ],
              ),
            )
          : const SizedBox.shrink(),
    );
  }

  Widget _buidText(String text) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
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
      ),
    );
  }

  Obx _buildItem2() {
    return Obx(() => _show_item_2.isTrue
        ? Column(
            children: [
              SizedBox(
                height: 17,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buidText('تا 60 متر مربع'),
                  _buidText('تا 50 متر مربع'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buidText('تا 80 متر مربع'),
                  _buidText('تا 70 متر مربع'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buidText('تا 100 متر مربع'),
                  _buidText('تا 90 متر مربع'),
                ],
              )
            ],
          )
        : const SizedBox.shrink());
  }
}
