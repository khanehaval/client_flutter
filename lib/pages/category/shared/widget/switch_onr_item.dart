import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SwitchItem extends StatefulWidget {
  bool IsSelected;
  final Function(String) onSelected;
  final String item;

  SwitchItem(
      {required this.onSelected,
      required this.item,
      Key? key,
      this.IsSelected = false})
      : super(key: key);

  @override
  _SwitchItemState createState() => _SwitchItemState();
}

class _SwitchItemState extends State<SwitchItem> {
  final isSelected = false.obs;

  @override
  void initState() {
    isSelected.value = widget.IsSelected;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return item(widget.item);
  }

  Widget item(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              isSelected.value = !isSelected.value;
              widget.onSelected(widget.item);
            },
            icon: Obx(() => Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black54)),
                  child: isSelected.value
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
          Text(
            text,
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
