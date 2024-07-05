import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';


class SwitchItemKolangi extends StatelessWidget {
  final RxString type;
  List<String> items;

  SwitchItemKolangi({required this.type, required this.items, super.key});

  @override
  Widget build(BuildContext context) {
    return buildMelkTypeItem();
  }

  Widget buildMelkTypeItem() => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items.map((e) => item(e)).toList());

  Widget item(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              fontFamily: MAIN_FONT_FAMILY,
            ),
          ),
          IconButton(
            onPressed: () {
              type.value = text;
            },
            icon: Obx(() => Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1, color: Colors.black54)),
                  child: type.value == text
                      ? const Icon(
                          Icons.check,
                          color: Colors.black,
                          size: 26,
                        )
                      : const SizedBox.shrink(),
                )),
          )
        ],
      ),
    );
  }
}
