import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class WidgetHamkaran extends StatelessWidget {
  const WidgetHamkaran({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      reverse: true,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Container(
                  width: Get.width / 3.2,
                  height: 118,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 3,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/hamkar.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'علیرضا محرمی',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 13,
                            fontFamily: 'Aban Bold',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'کارشناس خرید و فروش',
                        style: TextStyle(
                          color: Color.fromRGBO(183, 183, 183, 1),
                          fontSize: 10,
                          fontFamily: 'Aban Bold',
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: Get.width / 3.2,
                  height: 118,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 3,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/hamkar.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'علیرضا محرمی',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 13,
                            fontFamily: 'Aban Bold',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'کارشناس خرید و فروش',
                        style: TextStyle(
                          color: Color.fromRGBO(183, 183, 183, 1),
                          fontSize: 10,
                          fontFamily: 'Aban Bold',
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  width: Get.width / 3.2,
                  height: 118,
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x26000000),
                        blurRadius: 3,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/hamkar.png',
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          'علیرضا محرمی',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF303030),
                            fontSize: 13,
                            fontFamily: 'Aban Bold',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        'کارشناس خرید و فروش',
                        style: TextStyle(
                          color: Color.fromRGBO(183, 183, 183, 1),
                          fontSize: 10,
                          fontFamily: 'Aban Bold',
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Container(
                    width: Get.width / 3.2,
                    height: 118,
                    padding: const EdgeInsets.all(10),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 3,
                          offset: Offset(0, 0),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'assets/images/hamkaran_profile.svg',
                          width: 60,
                          height: 60,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'همکاران شما',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303030),
                              fontSize: 18,
                              fontFamily: 'Aban Bold',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
