import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/educational_tour.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Profile extends StatelessWidget {
  Profile({super.key});
  final _show_item_1 = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () => Get.to(() => EducationalTour()),
            ),
            actions: [
              GestureDetector(
                  onTap: () {
                    Get.to(
                      () => Profile(),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(60)),
                        child: const Padding(
                          padding: EdgeInsets.all(3),
                          child: Icon(
                            Icons.person_2_rounded,
                            size: 30,
                          ),
                        )),
                  )),
            ]),
        body: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          SizedBox(
              width: 218,
              height: 700,
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        // border: Border.all(
                        //   width: _selected.value == index ? 2 : 1.5,
                        // )
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: const Color.fromRGBO(0, 0, 0, 0.25),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 40, right: 10),
                      child: Column(children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Obx(
                            () => IconButton(
                              onPressed: () {},
                              icon: IconButton(
                                icon:
                                    SvgPicture.asset("assets/images/menu.svg"),
                                onPressed: () {
                                  BuildProfile();
                                },
                              ),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              ))
        ]));
  }
}

class BuildProfile extends StatelessWidget {
  final _show_item_1 = false.obs;
  BuildProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => _show_item_1.isTrue
          ? Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // border: Border.all(
                    //   width: _selected.value == index ? 2 : 1.5,
                    // )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color.fromRGBO(0, 0, 0, 0.25),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 40, right: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 70,
                              height: 70.45,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                  )
                                ],
                                shape: BoxShape.circle,
                              ),
                              child: SizedBox(
                                width: 28,
                                height: 24,
                                child: Image.asset(
                                  'assets/images/logo-fa-photoshop.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 40,
                            left: 50,
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      Border.all(width: 1, color: Colors.white),
                                  color: Colors.white),
                              child: const Icon(Icons.edit),
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        indent: 20,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile_category.svg',
                            width: 19,
                            height: 19,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile_message.svg',
                            width: 19,
                            height: 19,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile_moshavere.svg',
                            width: 19,
                            height: 19,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile_sabt aghahi.svg',
                            width: 19,
                            height: 19,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile_vahed.svg',
                            width: 19,
                            height: 19,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SvgPicture.asset(
                            'assets/images/profile_setting.svg',
                            width: 19,
                            height: 19,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Divider(
                        indent: 20,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 41,
                          width: 372,
                          child: TextField(
                            readOnly: true,
                            focusNode: FocusNode(canRequestFocus: false),
                            decoration: InputDecoration(
                              hintText: 'انتخاب نشده',
                              hintStyle: const TextStyle(
                                  color: Color(0xFF626262),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: IconButton(
                                icon: SvgPicture.asset(
                                    "assets/images/profile_Add.svg"),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 41,
                          width: 372,
                          child: TextField(
                            readOnly: true,
                            focusNode: FocusNode(canRequestFocus: false),
                            decoration: InputDecoration(
                              hintText: 'انتخاب نشده',
                              hintStyle: const TextStyle(
                                  color: Color(0xFF626262),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              prefixIcon: IconButton(
                                icon: SvgPicture.asset(
                                    "assets/images/profile_inbox.svg"),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/images/exit.svg"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          : const SizedBox.shrink(),
    );
  }
}
