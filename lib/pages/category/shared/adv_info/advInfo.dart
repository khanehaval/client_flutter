import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switachable.dart';
import 'package:get/get.dart';

class AdvInfo extends StatelessWidget {
  final AdvInfoModel advInfoModel;

  AdvInfo(this.advInfoModel, {super.key});

  final proposalTitle = false.obs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("عنوان و توضیحات آکهی"),
        const SizedBox(
          height: 10,
        ),
        switchable(proposalTitle, "عنوان پیشنهادی خانه اول"),
        const SizedBox(
          height: 5,
        ),
        Obx(() => Column(
              children: [
                if (proposalTitle.isTrue)
                  Container(
                      width: Get.width,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: proposalTitle.isTrue
                                ? Colors.black
                                : Colors.black26),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "آپارتمان 120 متری به صورت اقساطی",
                          textAlign: TextAlign.right,
                        ),
                      )),
                if (proposalTitle.isFalse)
                  Column(
                    children: [
                      const Text("*عنوان آگهی"),
                      TextField(
                        textAlign: TextAlign.right,
                        onChanged: (_) {
                          advInfoModel.title = _;
                        },
                        decoration: InputDecoration(
                            hintText: "تایپ کنید",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          const Text("توضیحات آگهی"),
                          TextField(
                            textAlign: TextAlign.right,
                            maxLines: 5,

                            onChanged: (_) {
                              advInfoModel.description = _;
                            },
                            decoration: InputDecoration(
                                hintText: "تایپ کنید",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15))),
                          )
                        ],
                      )
                    ],
                  ),
              ],
            ))
      ],
    );
  }
}
