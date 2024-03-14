import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/adssellfinaledit.dart';
import 'package:flutter_application_1/pages/category/shared/map_pages/selectlocationmap.dart';

class Map2 extends StatelessWidget {
  const Map2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          const SelectLocationMap(
            selectedType: '',
            parentName: '',
          ),
          Positioned(
            top: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "انتخاب محله ",
                      style: TextStyle(
                        color: Color.fromRGBO(166, 166, 166, 1),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: 40,
                      child: TextField(
                        textAlign: TextAlign.right,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: 'صادقیه شمالی',
                          hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "*انتخاب شهر",
                      style: TextStyle(color: Color.fromRGBO(166, 166, 166, 1)),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 40,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextField(
                        textAlign: TextAlign.right,
                        readOnly: true,
                        decoration: InputDecoration(
                          hintText: 'تهران',
                          hintStyle: const TextStyle(
                            color: Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
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
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home_outlined,
                    )),
              )),
        ],
      ),
    );
  }
}
