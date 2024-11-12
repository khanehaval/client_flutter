import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/widgets_messages/widget_titr_messages.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/svg.dart';

class FirstPageMessages extends StatelessWidget {
  final searchController = TextEditingController();

  FirstPageMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const WidgetTitrMessages(),
                const SizedBox(height: 20),
                const Divider(
                  endIndent: 25,
                  indent: 25,
                  color: Color.fromRGBO(226, 226, 226, 1),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/delete_chat.svg'),
                      const SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'assets/images/add_chat.svg',
                      ),
                      const SizedBox(
                        width: 190,
                      ),
                      const Text(
                        'پیام جدید',
                        style: TextStyle(
                            fontFamily: 'Aban Bold',
                            fontSize: 24,
                            color: Color.fromRGBO(99, 99, 99, 1)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SizedBox(
              height: 40,
              child: TextField(
                controller: searchController,
                textAlign: TextAlign.end,
                decoration: InputDecoration(
                  hintText: 'جستجو',
                  hintStyle: const TextStyle(
                      fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                      fontSize: 12,
                      height: 2),
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
