import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/map_info_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

showAdvertisment(AdvertismentModel advertismentModel) {
  showDialog(
      context: Get.context!,
      builder: (c) {
        return SizedBox(
          child: AlertDialog(
              backgroundColor: Colors.transparent,
              actionsAlignment: MainAxisAlignment.center,
              content: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Stack(
                        children: [
                          SizedBox(
                            height: 200,
                            child: Image.asset(
                              "assets/images/pic.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: SvgPicture.asset(
                              "assets/images/Score.svg",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 100),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: SvgPicture.asset(
                                "assets/images/delete.svg",
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SvgPicture.asset(
                              "assets/images/Pic Number.svg",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 170, right: 10),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: SvgPicture.asset(
                                "assets/images/save.svg",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 170, right: 40),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: SvgPicture.asset(
                                "assets/images/loc and cam.svg",
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 170, left: 5),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: SvgPicture.asset(
                                "assets/images/announcement.svg",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: SvgPicture.asset(
                            "assets/images/total price.svg",
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Align(
                          child: Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: Text(
                              "...ویلا 100 متری در زمین 250 متری",
                              style: TextStyle(
                                  fontSize: 10, fontFamily: MAIN_FONT_FAMILY),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/images/price.svg",
                        ),
                        Container(
                            child: SvgPicture.asset(
                          "assets/images/property1.svg",
                          width: 10,
                          height: 19,
                        ))
                      ],
                    ),
                    Row(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: SvgPicture.asset(
                            "assets/images/Sqm.svg",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              actions: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(0, 189, 97, 1)),
                    onPressed: () {},
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          CupertinoIcons.back,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "قبلی",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: MAIN_FONT_FAMILY),
                        ),
                      ],
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(23, 102, 175, 1)),
                    onPressed: () {},
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "بعدی",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: MAIN_FONT_FAMILY),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          CupertinoIcons.forward,
                          color: Colors.white,
                        ),
                      ],
                    ))
              ]),
        );
      });
}