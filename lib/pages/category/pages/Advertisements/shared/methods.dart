import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvertismentMoidel.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

showAdvertisment(AdvertismentModel advertismentModel) {
  showDialog(
      context: Get.context!,
      builder: (c) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          actionsAlignment: MainAxisAlignment.center,
          content: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(
                      "https://cdn.donya-e-eqtesad.com/thumbnail/YW5zb52LT8Wc/QHn8O9nsSzT8qCU7RegsN6Pbb5v74eEtbKeSOh05RaZX_Jba3R2TsUt7TZyzEhnm/%D8%AE%D8%A7%D9%86%D9%87+%D8%A7%D9%88%D9%84.jpg"),
                ),
                const Text("قیمت")
              ],
            ),
          ),
          actions: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(CupertinoIcons.back),
                    Text("قبلی"),
                  ],
                )),
            ElevatedButton(onPressed: () {}, child: const Text("بعدی"))
          ],
        );
      });
}
