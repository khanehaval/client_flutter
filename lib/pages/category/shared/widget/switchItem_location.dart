import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SwitchItems extends StatefulWidget {
  final Function(List<String>) onSelected;
  final List<String> items;

  const SwitchItems({required this.onSelected, required this.items, Key? key})
      : super(key: key);

  @override
  _SwitchItemsState createState() => _SwitchItemsState();
}

class _SwitchItemsState extends State<SwitchItems> {
  final selectedItems = <String>[].obs;

  @override
  Widget build(BuildContext context) {
    return buildMelkTypeItem();
  }

  Widget buildMelkTypeItem() {
    return ListView.builder(
      shrinkWrap: true,
      physics:
          const NeverScrollableScrollPhysics(), // Prevents scrolling inside the parent widget
      itemCount: widget.items.length,
      itemBuilder: (context, index) {
        return _buildRow(widget.items[index]);
      },
    );
  }

  Widget _buildRow(String item) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            item,
            style: const TextStyle(
              fontSize: 16,
              fontFamily: MAIN_FONT_FAMILY,
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                if (selectedItems.contains(item)) {
                  selectedItems.remove(item);
                } else {
                  selectedItems.add(item);
                }
              });
              widget.onSelected(selectedItems.toList());
            },
            icon: Obx(() => Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.black54),
                  ),
                  child: selectedItems.contains(item)
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
          ),
        ],
      ),
    );
  }
}
