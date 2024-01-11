import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:get/get.dart';

class EducationalTour extends StatelessWidget {
  const EducationalTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(60)),
              child: const Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  Icons.person_2_rounded,
                  size: 30,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white60,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => ());
                },
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => ());
                  },
                  child: Image.asset(
                    'assets/images/Personal user panel.png',
                    width: 392,
                    height: 195,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => ());
                },
                child: Image.asset(
                  "assets/images/Consultants user panel.png",
                  width: 392,
                  height: 195,
                  fit: BoxFit.fitHeight,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => ());
                },
                child: Image.asset(
                  "assets/images/Real estate agency user panel.png",
                  width: 392,
                  height: 195,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
