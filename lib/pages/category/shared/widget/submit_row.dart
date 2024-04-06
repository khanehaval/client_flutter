import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';

class SubmitRow extends StatelessWidget {
  final Widget nextPage;

  final RxBool submit;

  const SubmitRow({required this.submit, required this.nextPage, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => nextPage);
      },
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "... تایید و ادامه",
                  style: !submit.value
                      ? const TextStyle(
                          fontSize: 20,

                          fontFamily: MAIN_FONT_FAMILY,
                          color: Colors.black38,
                        )
                      : const TextStyle(
                          fontSize: 20, fontFamily: MAIN_FONT_FAMILY),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(width: 3,),
              GradientIcon(
                icon: Icons.double_arrow,
                gradient: LinearGradient(
                  colors:
                      submit.isTrue ? GRADIANT_COLOR : BLACK_12_GRADIANT_COLOR,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                offset: const Offset(0,0),
                size: 34,
              )
            ],
          )),
    );
  }
}
