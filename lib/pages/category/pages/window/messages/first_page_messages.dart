import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/message_Item.dart';
import 'package:flutter_application_1/pages/category/pages/window/messages/widgets_messages/widget_titr_messages.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                const SizedBox(height: 10),
                const WidgetTitrMessages(),
                const SizedBox(height: 20),
                const Divider(
                  endIndent: 25,
                  indent: 25,
                  color: Color.fromRGBO(226, 226, 226, 1),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/images/delete_chat.svg'),
                      const SizedBox(width: 40),
                      SizedBox(
                        height: 38,
                        width: 280,
                        child: TextField(
                          controller: searchController,
                          textAlign: TextAlign.end,
                          decoration: InputDecoration(
                            hintText: 'جستجو',
                            hintStyle: const TextStyle(
                              fontFamily:
                                  'MAIN_FONT_FAMILY_MEDIUM', // تعریف فونت اصلی
                              fontSize: 12,
                              height: 2,
                            ),
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
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: MessageItem(
                    time: '4:30 ب ظ',
                    name: 'علیرضا محرمی',
                    message: 'امروز دفتر هستید؟',
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 80.0), // تنظیم فاصله از کناره‌ها
        child: Align(
          alignment: Alignment.bottomRight, // موقعیت آیکون در پایین سمت راست
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.transparent, // حذف پس‌زمینه
            elevation: 0, // حذف سایه
            child: SvgPicture.asset(
                'assets/images/New message.svg'), // استفاده از آیکون
          ),
        ),
      ),
    );
  }
}
