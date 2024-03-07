import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/adssellfinaledit.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/selectlocationmap.dart';

class AdsMapSelect extends StatelessWidget {
   AdsMapSelect(
      {super.key,
    });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          SelectLocationMap(selectedType: '', parentName: '',

          ),
          Positioned(
              top: height * 0.05,
              left: width * 0.03,
              child: Container(
                width: width * 0.12,
                height: width * 0.12,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: const Icon(
                  Icons.person_2_outlined,
                ),
              )),
          Positioned(
              top: height * 0.05,
              left: width * 0.35,
              child: Container(
                width: width * 0.3,
                height: height * 0.045,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white),
                child: const Center(
                    child: Text(
                  "لوکیشن",
                  style: TextStyle(fontWeight: FontWeight.w900),
                )),
              )),
          Positioned(
              top: height * 0.05,
              right: width * 0.03,
              child: Container(
                width: width * 0.12,
                height: width * 0.12,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.white),
                child: IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(
                      Icons.home_outlined,
                    )),
              )),
        ],
      ),
    );
  }
}
