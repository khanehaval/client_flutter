import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EjaraMaskoni extends StatelessWidget {
  final _show_item_1 = false.obs;
  final _show_item_2 = false.obs;

  EjaraMaskoni({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Divider(
        endIndent: 20,
        indent: 20,
      ),
      Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(5),
          height: 153,
          width: 372,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 1,
                ),
              ]),
          child: Image.asset('assets/images/Group 658.png'))
    ]);
  }
}
