import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ListConsultants extends StatelessWidget {
  const ListConsultants({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height / 2.5,
                  width: 362,
                  child: SvgPicture.asset(
                    'assets/images/banner.svg',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(183, 183, 183, 1),
                          borderRadius: BorderRadius.all(Radius.circular(9))),
                      child: Padding(
                        padding: const EdgeInsets.all(1.2),
                        child: Container(
                          width: 170,
                          height: 31,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'مشاهده مشاورین روی نقشه',
                              style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                fontSize: 12,
                                color: Color.fromRGBO(41, 111, 226, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(183, 183, 183, 1),
                          borderRadius: BorderRadius.all(Radius.circular(9))),
                      child: Padding(
                        padding: const EdgeInsets.all(1.2),
                        child: Container(
                          width: Get.width / 2.3,
                          height: 31,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                            child: Text(
                              'ثبت نام به عنوان مشاور',
                              style: TextStyle(
                                fontFamily: MAIN_FONT_FAMILY,
                                fontSize: 12,
                                color: Color.fromRGBO(41, 111, 226, 1),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/images/property Tab project consultants.svg'),
                              const SizedBox(
                                width: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: SvgPicture.asset(
                                    'assets/images/property Tab project agancy and agant.svg'),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                width: 150,
                                height: 2,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.white,
                                      Colors.grey[300]!,
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(183, 183, 183, 1),
                            borderRadius: BorderRadius.all(Radius.circular(9))),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: Container(
                            width: Get.width / 3.5,
                            height: 41,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(41, 111, 226, 1),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Center(
                              child: Text(
                                'مشاورین املاک',
                                style: TextStyle(
                                    fontFamily: MAIN_FONT_FAMILY,
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 3,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                            width: 150,
                          ),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/aghahi_agency.svg'),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 18.0,
                                    ),
                                    child: Image.asset(
                                      'assets/images/agahi_moshaver.png',
                                      width: 71,
                                      height: 70,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 3,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                            width: 150,
                          ),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/aghahi_agency.svg'),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 18.0,
                                    ),
                                    child: Image.asset(
                                      'assets/images/agahi_moshaver.png',
                                      width: 71,
                                      height: 70,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 3,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                            width: 150,
                          ),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/aghahi_agency.svg'),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 18.0,
                                    ),
                                    child: Image.asset(
                                      'assets/images/agahi_moshaver.png',
                                      width: 71,
                                      height: 70,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 3,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                            width: 150,
                          ),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/aghahi_agency.svg'),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 18.0,
                                    ),
                                    child: Image.asset(
                                      'assets/images/agahi_moshaver.png',
                                      width: 71,
                                      height: 70,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 250,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 3,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                            width: 150,
                          ),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/aghahi_agency.svg'),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 18.0,
                                    ),
                                    child: Image.asset(
                                      'assets/images/agahi_moshaver.png',
                                      width: 71,
                                      height: 70,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 250,
                      width: Get.width / 2.3,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 0),
                                blurRadius: 3,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 255, 255, 255)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                            width: 150,
                          ),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  SvgPicture.asset(
                                      'assets/images/aghahi_agency.svg'),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      left: 18.0,
                                    ),
                                    child: Image.asset(
                                      'assets/images/agahi_moshaver.png',
                                      width: 71,
                                      height: 70,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
