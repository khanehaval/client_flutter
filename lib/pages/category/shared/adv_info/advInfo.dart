import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:get/get.dart';

class AdvInfo extends StatelessWidget {
  final AdvInfoModel advInfoModel;

  AdvInfo(this.advInfoModel, {super.key});

  final proposalTitle = false.obs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("عنوان و توضیحات آکهی"),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "عنوان پیشنهادی خانه اول",
              style:
                  TextStyle(fontSize: 13, color: Color.fromRGBO(99, 99, 99, 1)),
            ),
            Transform.scale(
              scale: 0.80,
              child: Obx(
                () => Switch(
                    onChanged: (_) => proposalTitle.value = _,
                    value: proposalTitle.value,
                    activeColor: Colors.white,
                    activeTrackColor: const Color.fromRGBO(54, 216, 89, 1),
                    inactiveThumbColor: const Color.fromRGBO(11, 8, 8, 0.2),
                    inactiveTrackColor: const Color.fromRGBO(255, 255, 255, 1)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Obx(() => Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: proposalTitle.isTrue
                              ? Colors.black
                              : Colors.black26),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("آپارتمان 120 متری به صورت اقساطی")),
                Column(
                  children: [
                    const Text("عنوان آگهی*"),
                    TextField(
                      onChanged: (_) {
                        advInfoModel.title = _;
                      },
                      decoration: InputDecoration(
                          hintText: "تایت کنید", border: OutlineInputBorder()),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Text("توضیحات آگهی*"),
                    TextField(
                      minLines: 4,
                      onChanged: (_) {
                        advInfoModel.description = _;
                      },
                      decoration: InputDecoration(
                          hintText: "تایت کنید", border: OutlineInputBorder()),
                    )
                  ],
                )
              ],
            ))
      ],
    );
  }
}
