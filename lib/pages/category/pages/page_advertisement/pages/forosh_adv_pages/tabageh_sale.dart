import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:get/get.dart';

buildButtom() {
  final _selected = 0.obs;
  return Get.bottomSheet(
      Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(children: [
            const Text("بیش از یک مورد می توانید انتخاب کنید",
                style: TextStyle(fontSize: 15, fontFamily: MAIN_FONT_FAMILY)),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildItem(
                  'assets/images/Category.png',
                  1,
                ),
                _buildItem('assets/images/Sale home.png', 2),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildItem('assets/images/Rent store.png', 3),
                _buildItem('assets/images/Sale store.png', 4),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildItem('assets/images/Daily.png', 5),
                _buildItem('assets/images/Construction.png', 6),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                if (_selected.value > 0) {
                  int index = _selected.value;
                  Widget finalWidget = const SizedBox.shrink();
                  if (index == 2) {
                  } else if (index == 1) {
                    ();
                  } else if (index == 4) {
                  } else if (index == 3) {
                  } else if (index == 5) {
                  } else if (index == 6) {}

                  Get.to(() => finalWidget);
                }
              },
              child: Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.double_arrow,
                        color: _selected.value == 0
                            ? Colors.black54
                            : const Color.fromRGBO(76, 140, 237, 1),
                        size: 35,
                      ),
                    ],
                  )),
            ),
          ]),
        ),
      ),
      elevation: 20.0,
      backgroundColor: Colors.white,
      enableDrag: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
      ));
}

Widget _buildItem(String assetPath, int index) {
  final _selected = 0.obs;

  return GestureDetector(
    onTap: () {
      _selected.value = index;
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
      child: Obx(() => Container(
            width: 125,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                  )
                ],
                border: Border.all(
                  color: _selected.value == index
                      ? Colors.greenAccent
                      : Colors.black38,
                  width: _selected.value == index ? 2.5 : 1.5,
                )),
            child: Image.asset(
              assetPath,
            ),
          )),
    ),
  );
}
