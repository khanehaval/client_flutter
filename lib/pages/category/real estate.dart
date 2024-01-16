import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:get/get.dart';

class RealEstate extends StatelessWidget {
  var _show = false.obs;
  var _subsetVisible = false.obs;

  RealEstate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
          ),
          actions: [
            GestureDetector(
              onTap: () {
                Get.to(
                  () => const Profile(),
                );
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(60)),
                  child: const Padding(
                    padding: EdgeInsets.all(3.0),
                    child: Icon(
                      Icons.person_2_rounded,
                      size: 30,
                    ),
                  )),
            ),
          ]),
      body: Stack(children: [
        SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      height: 98,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ]),
                      child: Image.asset('assets/images/Frame 36.png'),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      height: 98,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ]),
                      child: Image.asset('assets/images/Frame 37.png'),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      height: 98,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ]),
                      child: Image.asset('assets/images/Frame 35.png'),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      height: 98,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ]),
                      child: Image.asset('assets/images/Frame 34.png'),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      height: 98,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ]),
                      child: Image.asset('assets/images/Frame 38.png'),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      height: 98,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ]),
                      child: Image.asset('assets/images/Frame 39.png'),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(5),
                      height: 98,
                      width: 130,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 8,
                            ),
                          ]),
                      child: GestureDetector(
                          onTap: () {
                            Get.to(() => RealEstate());
                          },
                          child: Image.asset('assets/images/Frame 31.png')),
                    ),
                  ],
                ),
              ),
              Divider(
                endIndent: 20,
                indent: 20,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(5),
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
                    child: Image.asset('assets/images/Group 658.png'),
                  ),
                ],
              ),
              Divider(
                endIndent: 20,
                indent: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        height: 90,
                        width: 147,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/Group 650.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 147,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 5,
                          )
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/Group 649.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        width: 147,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/Group 648.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                endIndent: 20,
                indent: 20,
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 372,
                      child: GestureDetector(
                          onTap: () {
                            _show.value = !_show.value;
                            _subsetVisible.value = !_subsetVisible.value;
                          },
                          child: Obx(() => _show.isFalse
                              ? TextField(
                                  textAlign: TextAlign.right,
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: 'فروش ویژه',
                                    prefixIcon: IconButton(
                                      icon: _show.value
                                          ? Icon(Icons.arrow_drop_down_circle)
                                          : Icon(CupertinoIcons.chevron_left_2),
                                      onPressed: () {
                                        _show.value = !_show.value;
                                        _subsetVisible.value =
                                            !_subsetVisible.value;
                                      },
                                    ),
                                    hintStyle: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Iran Sans Bold,'),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink())),
                    ),
                    Obx(
                      () => _show.value
                          ? Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/Group 778.png',
                                    width: 372,
                                    height: 150,
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  child: Container(
                                                    height: 98,
                                                    width: 180,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.1),
                                                            spreadRadius: 1,
                                                            blurRadius: 10,
                                                          )
                                                        ],
                                                        border: Border.all(
                                                          color: Colors
                                                              .blue, // Initial border color
                                                          width: 0.7,
                                                        )),
                                                    child: Image.asset(
                                                        'assets/images/Frame 35.png'),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Container(
                                                height: 98,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.1),
                                                        spreadRadius: 1,
                                                        blurRadius: 10,
                                                      )
                                                    ],
                                                    border: Border.all(
                                                      color: Colors
                                                          .blue, // Initial border color
                                                      width: 0.7,
                                                    )),
                                                child: Image.asset(
                                                    'assets/images/Frame 34.png'),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox.shrink(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                endIndent: 20,
                indent: 20,
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 45,
                      width: 372,
                      child: GestureDetector(
                          onTap: () {
                            _show.value = !_show.value;
                            _subsetVisible.value = !_subsetVisible.value;
                          },
                          child: Obx(() => _show.isFalse
                              ? TextField(
                                  textAlign: TextAlign.right,
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    hintText: 'خانه اول',
                                    prefixIcon: IconButton(
                                      icon: _show.value
                                          ? Icon(Icons.arrow_drop_down_circle)
                                          : Icon(CupertinoIcons.chevron_left_2),
                                      onPressed: () {
                                        _show.value = !_show.value;
                                        _subsetVisible.value =
                                            !_subsetVisible.value;
                                      },
                                    ),
                                    hintStyle: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Iran Sans Bold,'),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                )
                              : const SizedBox.shrink())),
                    ),
                    Obx(
                      () => _show.value
                          ? Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/Group 631.png',
                                    width: 372,
                                    height: 150,
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(5),
                                                  child: Container(
                                                    height: 98,
                                                    width: 180,
                                                    decoration: BoxDecoration(
                                                        color: Colors.white,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.1),
                                                            spreadRadius: 1,
                                                            blurRadius: 10,
                                                          )
                                                        ],
                                                        border: Border.all(
                                                          color: Colors
                                                              .blue, // Initial border color
                                                          width: 0.7,
                                                        )),
                                                    child: Image.asset(
                                                        'assets/images/Group 655.png',fit: BoxFit.fill),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(0),
                                              child: Container(
                                                height: 98,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.1),
                                                        spreadRadius: 1,
                                                        blurRadius: 10,
                                                      )
                                                    ],
                                                    border: Border.all(
                                                      color: Colors
                                                          .blue, // Initial border color
                                                      width: 0.7,
                                                    )),
                                                child: Image.asset(
                                                    'assets/images/Group 654.png',fit: BoxFit.fill),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox.shrink(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
