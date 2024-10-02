import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WidgetSwitchitemsLocationManagementAd extends StatefulWidget {
  final Function(List<String>) onSelected;
  final List<String> items;

  const WidgetSwitchitemsLocationManagementAd(
      {required this.onSelected, required this.items, Key? key})
      : super(key: key);

  @override
  _WidgetSwitchitemsLocationManagementAdState createState() =>
      _WidgetSwitchitemsLocationManagementAdState();
}

class _WidgetSwitchitemsLocationManagementAdState
    extends State<WidgetSwitchitemsLocationManagementAd> {
  final selectedItems = <String>[].obs;

  @override
  Widget build(BuildContext context) {
    return buildMelkTypeItem();
  }

  Widget buildMelkTypeItem() {
    return Container(
      height: 270,
      margin: const EdgeInsets.symmetric(horizontal: 20), // فاصله بیرونی
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black54), // تعریف بُردر
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: widget.items.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Column();
              } else {
                return _buildRow(widget.items[index - 1]);
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _buildRow(String item) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              if (selectedItems.value.contains(item)) {
                selectedItems.value
                    .clear(); // Clear the selection if the item is already selected
              } else {
                selectedItems
                  ..value.clear() // Clear previous selections
                  ..add(item); // Add the newly selected item
              }
            });
            widget.onSelected(selectedItems.value.toList());
          },
          icon: Obx(() => Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.black54),
                ),
                child: selectedItems.value.contains(item)
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
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(item,
              textAlign:
                  TextAlign.right, // این بخش متن را درون Text راست‌چین می‌کند
              style: const TextStyle(
                fontSize: 12,
                fontFamily: MAIN_FONT_FAMILY,
              )),
        )
      ],
    );
  }
}
