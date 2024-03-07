import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:get/get.dart';

buildButtom() {
  final _selected = 0.obs;
  return Get.bottomSheet(
      Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("بیش از یک مورد می توانید انتخاب کنید",
                    style:
                        TextStyle(fontSize: 15, fontFamily: MAIN_FONT_FAMILY)),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildItem(
                      'assets/images/Frame 12.png',
                      1,
                    ),
                    _buildItem('assets/images/Frame 11.png', 2),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildItem('assets/images/Frame 13.png', 3),
                    _buildItem('assets/images/Frame 11.png', 4),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildItem('assets/images/Frame 13.png', 5),
                    _buildItem('assets/images/Frame 11.png', 6),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 60,
                        ),
                      ],
                    ),
                  ),
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
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
      child: Obx(() => Container(
            width: 148,
            height: 85,
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
