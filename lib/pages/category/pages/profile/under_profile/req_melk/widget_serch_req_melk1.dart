import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class WidgetSerchReqMelk1 extends StatelessWidget {
  WidgetSerchReqMelk1({super.key});
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, left: 15),
      child: SizedBox(
        height: 40,
        child: TextField(
          controller: searchController,
          textAlign: TextAlign.end,
          decoration: InputDecoration(
            hintText: 'جستجو',
            hintStyle: const TextStyle(
                fontFamily: MAIN_FONT_FAMILY, fontSize: 14, height: 1.6),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromRGBO(23, 102, 175, 1),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Color.fromRGBO(23, 102, 175, 1),
              ),
            ),
            prefixIcon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }
}
