import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CallBottomSheet {
  static void showCallBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.green, Colors.blue]), // تغییر رنگ برای تست
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Padding(
            padding: const EdgeInsets.only(top: 1.0, left: 1, right: 1),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 130,
                          height: 44,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF429F56)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              // اکشن کپی کردن شماره
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("شماره کپی شد!")),
                              );
                            },
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'کپی کردن شماره',
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 11,
                                  ),
                                ),
                                Icon(Icons.copy)
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 130,
                          height: 44,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Color(0xFF296FE2)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              // اکشن تماس مستقیم
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text("تماس مستقیم آغاز شد!")),
                              );
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  'تماس مستقیم',
                                  style: TextStyle(
                                    color: Color(0xFF303030),
                                    fontSize: 12,
                                  ),
                                ),
                                SvgPicture.asset(
                                  'assets/images/Call_chat.svg',
                                  width: 19,
                                  height: 19,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
