import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/real%20estate.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  var show = true.obs;

  Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                        )
                      ],
                      border: Border.all(
                        color: Colors.blue, // Initial border color
                        width: 0.7,
                      )),
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => RealEstate());
                    },
                    child: Image.asset('assets/images/Frame 31.png'),
                  ),
                ),
              ),
              Obx(
                () => show.value
                
                    ? Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          height: 200,
                          width: 132,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                              )
                            ],
                            border: Border.all(
                              color: Colors.blue, 
                              width: 0.7,
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () {},
                            child: Image.asset('assets/images/Frame 38.png'),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15,left: 10),
            child: Container(
              height: 119,
              width: 364,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 10,
                  )
                ],
                border: Border.all(
                  color: Colors.blue, // Initial border color
                  width: 0.7,
                ),
              ),
              child: Image.asset('assets/images/Frame 39.png'),
            ),
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
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 130,
                            width: 167,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  )
                                ],
                                border: Border.all(
                                  color: Colors.blue, // Initial border color
                                  width: 0.7,
                                )),
                            child: Image.asset('assets/images/Frame 35.png'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 130,
                        width: 167,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                              )
                            ],
                            border: Border.all(
                              color: Colors.blue, // Initial border color
                              width: 0.7,
                            )),
                        child: Image.asset('assets/images/Frame 34.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
                          padding: const EdgeInsets.all(15),
                          child: Container(
                            height: 130,
                            width: 167,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  )
                                ],
                                border: Border.all(
                                  color: Colors.blue, // Initial border color
                                  width: 0.7,
                                )),
                            child: Image.asset('assets/images/Frame 37.png'),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 130,
                        width: 167,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                              )
                            ],
                            border: Border.all(
                              color: Colors.blue, // Initial border color
                              width: 0.7,
                            )),
                        child: Image.asset('assets/images/Frame 36.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
