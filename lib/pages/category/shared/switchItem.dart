import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'constant.dart';

class SwitchItem extends StatelessWidget {
  Function(String) onSelected;
  List<String> items;

  SwitchItem({required this.onSelected, required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return buildMelkTypeItem();
  }

  final selected = "".obs;

  Widget buildMelkTypeItem() {
    return Column(
      children: _split().map((e) => _buildRow(e)).toList(),
    );
  }

  List<List<String>> _split() {
    var res = <List<String>>[];
    int j = 0;
    while (j < items.length) {
      res.add(items.sublist(j, min(j + 3, items.length)).toList());
      j = j + 3;
    }
    return res;
  }

  Widget _buildRow(List<String> items) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: items.map((e) => item(e)).toList());
  }

  Widget item(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 10.5,
              fontFamily: MAIN_FONT_FAMILY,
            ),
          ),
          IconButton(
            onPressed: () {
              selected.value = text;
              onSelected(text);
            },
            icon: Obx(() => Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black54)),
                  child: selected.value == text
                      ? SizedBox(
                          width: 15,
                          height: 14,
                          child: SvgPicture.asset(
                            'assets/images/check.svg',
                          ),
                        )
                      : const SizedBox.shrink(),
                )),
          )
        ],
      ),
    );
  }
}
