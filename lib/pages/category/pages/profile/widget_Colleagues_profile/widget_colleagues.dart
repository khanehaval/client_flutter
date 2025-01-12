import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HamkarWidget extends StatefulWidget {
  @override
  _HamkarWidgetState createState() => _HamkarWidgetState();
}

class _HamkarWidgetState extends State<HamkarWidget> {
  bool _showMessage = false; // وضعیت نمایش متن

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: Get.width / 1.2,
            height: 390,
            decoration: ShapeDecoration(
              gradient: const LinearGradient(colors: [
                Colors.blue,
                Colors.green
              ]), // جایگزین GRADIANT_COLOR_Colleagues
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              shadows: const [
                BoxShadow(
                  color: Color(0x26000000),
                  blurRadius: 3.0,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                // WidgetTaskManagementColleagues(), // جایگزین با یک ویجت ساده
                Container(
                  color: Colors.red,
                  height: 50,
                  width: double.infinity,
                  child: const Center(
                      child: Text("WidgetTaskManagementColleagues")),
                ),
                const SizedBox(height: 10),
                // WidgetManagementAd(), // جایگزین با یک ویجت ساده
                Container(
                  color: Colors.yellow,
                  height: 50,
                  width: double.infinity,
                  child: const Center(child: Text("WidgetManagementAd")),
                ),
                const SizedBox(height: 20),
                const Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Color.fromRGBO(226, 226, 226, 1),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _showMessage = true; // تغییر وضعیت به true برای نمایش متن
                    });
                  },
                  child: Container(
                    width: Get.width / 2.3,
                    height: Get.height / 24,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFF9C4040)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x7F9C4040),
                          blurRadius: 7,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'لغو همکاری',
                          style: TextStyle(
                            color: Color(0xFF626262),
                            fontSize: 12,
                            fontFamily:
                                'MAIN_FONT_FAMILY', // جایگزین با فونت واقعی
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                if (_showMessage) // نمایش متن اگر وضعیت true باشد
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'لغو همکاری با موفقیت ارسال شد، لطفا منتظر تائید باشید.',
                      style: TextStyle(
                        color: Colors.green, // رنگ متن
                        fontSize: 12,
                        fontFamily: 'MAIN_FONT_FAMILY', // جایگزین با فونت واقعی
                      ),
                    ),
                  ),
                const Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Color.fromRGBO(226, 226, 226, 1),
                ),
                // WidgetInformationRow(), // جایگزین با یک ویجت ساده
                Container(
                  color: Colors.blue,
                  height: 50,
                  width: double.infinity,
                  child: const Center(child: Text("WidgetInformationRow")),
                ),
                const SizedBox(height: 20),
                // WidgetVitrinMessageCall(), // جایگزین با یک ویجت ساده
                Container(
                  color: Colors.green,
                  height: 50,
                  width: double.infinity,
                  child: const Center(child: Text("WidgetVitrinMessageCall")),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
