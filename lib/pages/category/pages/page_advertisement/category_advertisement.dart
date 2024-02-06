import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/pages/page_advertisement/under_category.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CategoryAdvertisement extends StatelessWidget {
  var show = true.obs;

  CategoryAdvertisement({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
            ),
            onPressed: () => Get.back(),
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
                ),
              ),
            ),
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, bottom: 2),
            child: Text(
              "انتخاب دسته بندی",
              style: TextStyle(
                  color: Color.fromRGBO(
                    99,
                    99,
                    99,
                    1,
                  ),
                  fontSize: 30,
                  fontFamily: 'Iran Sans Bold'),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 40),
              child: SvgPicture.asset(
                'assets/images/key and home1.svg',
              )),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 30, bottom: 10),
                        child: Container(
                          height: 96,
                          width: 144,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5,
                              )
                            ],
                            border: Border.all(
                              color: Colors.black45,
                              width: 0.3,
                            ),
                          ),
                          child: Image.asset('assets/images/Category.png'),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 17, bottom: 10),
                      child: Container(
                        height: 96,
                        width: 144,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 10,
                              )
                            ],
                            border: Border.all(
                              color: Colors.black45,
                              width: 0.3,
                            )),
                        child: GestureDetector(
                        onTap: () {
                          Get.to(()=>UnderForosh());
                        },
                          child: Image.asset('assets/images/Sale home.png')),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Container(
                      height: 96,
                      width: 144,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 5,
                            )
                          ],
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3,
                          )),
                      child: Image.asset('assets/images/Rent store.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 17, bottom: 10),
                    child: Container(
                      height: 96,
                      width: 144,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 10,
                          )
                        ],
                        border: Border.all(
                          color: Colors.black45,
                          width: 0.3,
                        ),
                      ),
                      child: Image.asset('assets/images/Sale store.png'),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30,
                    ),
                    child: Container(
                      height: 96,
                      width: 144,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 5,
                            )
                          ],
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3,
                          )),
                      child: Image.asset('assets/images/Daily.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 17,
                    ),
                    child: Container(
                      height: 96,
                      width: 144,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 10,
                            )
                          ],
                          border: Border.all(
                            color: Colors.black45,
                            width: 0.3,
                          )),
                      child: Image.asset('assets/images/Construction.png'),
                    ),
                  ),
                ],
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130),
            child: Row(
              children: [
                Text(
                  "تائید و ادامه ...",
                  style: TextStyle(fontSize: 20, fontFamily: 'Iran Sans Bold'),
                ),
                Icon(
                  Icons.double_arrow,
                  color: Color.fromRGBO(76, 140, 237, 1),
                  size: 35,
                ),
              ],
            ),
          ),
        ],
        ),
         bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        onDestinationSelected: (int index) {
          Get.to(() => EducationalTour(
                index: index,
                showEducation: false,
              ));
        },
        indicatorColor: const Color(0x36D859),
        // selectedIndex: currentPageIndex.value,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(CupertinoIcons.home),
            icon: Icon(Icons.home_filled),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.messenger),
            icon: Icon(Icons.message_rounded),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.add_circle_outline_rounded),
            icon: Icon(Icons.add_circle_outline_rounded),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.widgets),
            icon: Icon(Icons.widgets),
            label: '',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.location_on_outlined),
            icon: Icon(Icons.location_on_outlined),
            label: '',
          ),
        ],
      ),
        );
  }
}
