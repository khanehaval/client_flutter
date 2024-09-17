import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SwitchItem extends StatelessWidget {
  final String item;
  final bool isSelected; // bool به جای RxBool

  final VoidCallback onTap; // افزودن یک تابع برای مدیریت کلیک

  SwitchItem({
    required this.item,
    required this.isSelected,
    required this.onTap, // دریافت تابع کلیک
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onTap, // هنگام کلیک، تابع کلیک صدا زده می‌شود
            icon: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.black54),
              ),
              child: isSelected
                  ? Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SvgPicture.asset(
                        'assets/images/check.svg',
                        width: 10,
                        height: 10,
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
          Text(
            item,
            style: const TextStyle(
              fontSize: 10.5,
              fontFamily: MAIN_FONT_FAMILY,
            ),
          ),
        ],
      ),
    );
  }
}
