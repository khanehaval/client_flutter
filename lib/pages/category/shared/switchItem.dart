import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'constant.dart';

class SwitchItem extends StatefulWidget {
  final Function(List<String>) onSelected;
  final List<String> items;

  const SwitchItem({required this.onSelected, required this.items, Key? key})
      : super(key: key);

  @override
  _SwitchItemState createState() => _SwitchItemState();
}
class _SwitchItemState extends State<SwitchItem> {
  final selectedItems = <String>[].obs;

  @override
  Widget build(BuildContext context) {
    return buildMelkTypeItem();
  }

  Widget buildMelkTypeItem() {
    return Column(
      children: _split(widget.items).map((e) => _buildRow(e)).toList(),
    );
  }

  List<List<String>> _split(List<String> items) {
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
      children: items.map((e) => item(e)).toList(),
    );
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
              setState(() {
                if (selectedItems.contains(text)) {
                  selectedItems.remove(text);
                } else {
                  selectedItems.add(text);
                }
              });
              widget.onSelected(selectedItems.toList());
            },
            icon: Obx(() => Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black54)),
                  child: selectedItems.contains(text)
                      ? Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SvgPicture.asset(
                            'assets/images/check.svg',
                            width: 10,
                            height: 10,
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
