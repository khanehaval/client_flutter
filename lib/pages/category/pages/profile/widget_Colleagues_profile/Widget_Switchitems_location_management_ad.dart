import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WidgetSwitchitemsLocationManagementAd extends StatefulWidget {
  final Function(List<String>) onSelected;
  final List<String> items;

  const WidgetSwitchitemsLocationManagementAd({
    required this.onSelected,
    required this.items,
    Key? key,
  }) : super(key: key);

  @override
  _WidgetSwitchitemsLocationManagementAdState createState() =>
      _WidgetSwitchitemsLocationManagementAdState();
}

class _WidgetSwitchitemsLocationManagementAdState
    extends State<WidgetSwitchitemsLocationManagementAd> {
  final selectedItems = <String>[].obs;

  @override
  Widget build(BuildContext context) {
    return _buildMelkTypeItem();
  }

  Widget _buildMelkTypeItem() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 265,
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black54), // تعریف بُردر
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget.items.length + 1,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      children: [
                        _buildRow("همه آگهی های من"),
                        const Divider(
                          indent: 10,
                          endIndent: 10,
                          color: Color.fromRGBO(226, 226, 226, 1),
                        ),
                      ],
                    );
                  } else {
                    return _buildRow(widget.items[index - 1]);
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String itemName) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              // مدیریت انتخاب یا لغو انتخاب آیتم
              if (selectedItems.value.contains(itemName)) {
                selectedItems.value.remove(itemName); // لغو انتخاب آیتم
              } else {
                selectedItems.add(itemName); // اضافه کردن آیتم
              }
            });
            widget.onSelected(selectedItems.value.toList());
          },
          icon: Obx(
            () => Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.black54),
              ),
              child: selectedItems.value.contains(itemName)
                  ? Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SvgPicture.asset(
                        'assets/images/check.svg', // نمایش آیکون چک
                        width: 10,
                        height: 10,
                      ),
                    )
                  : const SizedBox.shrink(), // بدون آیکون
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: Text(
            itemName,
            textAlign: TextAlign.right,
            style: const TextStyle(
              fontSize: 10,
              fontFamily: MAIN_FONT_FAMILY,
            ),
          ),
        ),
      ],
    );
  }
}
