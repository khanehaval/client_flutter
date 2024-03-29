import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/contant.dart';
import 'package:get/get.dart';

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
              Text(
                "...تایید و ادامه",
                style: !submit.value
                    ? const TextStyle(
                        fontSize: 20,
                        fontFamily: MAIN_FONT_FAMILY,
                        color: Colors.black38,
                      )
                    : const TextStyle(
                        fontSize: 20, fontFamily: MAIN_FONT_FAMILY),
              ),
              Icon(
                Icons.double_arrow,
                color: !submit.value
                    ? Colors.black54
                    : const Color.fromRGBO(76, 140, 237, 1),
                size: 35,
              ),
            ],
          )),
    );
  }
}
