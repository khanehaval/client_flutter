import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class EjaraRozanehFilterWidget extends StatelessWidget {
  EjaraRozanehFilterWidget({super.key});
  final _show_item_ejararozaneh = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: _show_item_ejararozaneh.isTrue ? 230.h : 50,
        width: 370.w,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(250, 250, 250, 1),
            border: Border.all(color: const Color.fromRGBO(166, 166, 166, 1)),
            borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              IconButton(
                icon: _show_item_ejararozaneh.value
                    ? SvgPicture.asset(
                        'assets/images/=.svg',
                      )
                    : SvgPicture.asset('assets/images/down.svg'),
                onPressed: () {
                  _show_item_ejararozaneh.value =
                      !_show_item_ejararozaneh.value;
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "اجاره روزانه",
                  style:
                      TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 12.sp),
                ),
              ),
            ]),
            if (_show_item_ejararozaneh.isTrue)
              Column(
                children: [
                  ejararozaneh(context),
                  const SizedBox(
                    height: 25,
                  ),
                  ejararozaneh2(context)
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget ejararozaneh(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 225, 225, 225),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(1.1),
        child: Container(
          height: 50.h,
          width: MediaQuery.of(context).size.width / 1.23,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 225, 225),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromRGBO(
                      183,
                      183,
                      183,
                      1,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 225, 225, 225),
                      borderRadius: BorderRadius.circular(16)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.1),
                    child: Container(
                      width: 225.w,
                      height: 30.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/images/arrow_down.svg",
                              width: 10,
                              height: 10,
                              color: const Color.fromRGBO(
                                48,
                                48,
                                48,
                                1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Text(
                              'انتخاب کنید',
                              style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                  fontSize: 12.h,
                                  color: Color.fromRGBO(166, 166, 166, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "حداقل",
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 12.h,
                  color: Color.fromRGBO(99, 99, 99, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ejararozaneh2(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 225, 225, 225),
          borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(1.1),
        child: Container(
          height: 50.h,
          width: MediaQuery.of(context).size.width / 1.23,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 225, 225, 225),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: const Color.fromRGBO(
                      183,
                      183,
                      183,
                      1,
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(183, 183, 183, 1),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(1.1),
                    child: Container(
                      width: 225.w,
                      height: 30.h,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              "assets/images/arrow_down.svg",
                              width: 10,
                              height: 10,
                              color: const Color.fromRGBO(
                                48,
                                48,
                                48,
                                1,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: Text(
                              'انتخاب کنید',
                              style: TextStyle(
                                  fontFamily: MAIN_FONT_FAMILY_LIGHT,
                                  fontSize: 12.sp,
                                  color: Color.fromRGBO(166, 166, 166, 1)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "حداکثر",
                style: TextStyle(
                  fontFamily: MAIN_FONT_FAMILY,
                  fontSize: 12.sp,
                  color: Color.fromRGBO(99, 99, 99, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
