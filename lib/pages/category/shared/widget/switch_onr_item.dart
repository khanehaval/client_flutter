import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';

class SwitchItem extends StatefulWidget {
  final bool isSelected;
  final Function() onSelected; // تغییر نوع تابع به void
  final String item;

  SwitchItem({
    required this.onSelected,
    required this.item,
    Key? key,
    this.isSelected = false,
    required TextStyle textStyle,
  }) : super(key: key);

  @override
  _SwitchItemState createState() => _SwitchItemState();
}

class _SwitchItemState extends State<SwitchItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              widget.onSelected(); // صدا زدن تابع بدون پارامتر
            },
            icon: Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                border: Border.all(width: 1, color: Colors.black54),
              ),
              child: widget.isSelected
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
            widget.item,
            style: const TextStyle(
              fontSize: 14,
              fontFamily: MAIN_FONT_FAMILY,
            ),
          ),
        ],
      ),
    );
  }
}
