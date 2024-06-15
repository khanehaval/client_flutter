import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../models/FacilitiesModel.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class FacilitiesSelectorWidget extends StatelessWidget {
  final String title;
  final List<FacilitiesModel> selectable;
  final RxList<FacilitiesModel> selected;

  FacilitiesSelectorWidget({
    this.title = "سایر امکانات",
    required this.selectable,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
        ),
        const SizedBox(height: 15),
        Obx(() => SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: selected.length + 1,
                itemBuilder: (context, index) {
                  if (index == selected.length) {
                    return Padding(
                      padding: const EdgeInsets.all(1),
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () {
                          FocusScope.of(context).unfocus();
                          FacilitiesSelector(selectable, selected);
                        },
                        child: DottedBorder(
                          radius: const Radius.circular(10),
                          borderType: BorderType.RRect,
                          color: Colors.black26,
                          strokeWidth: 1,
                          child: const SizedBox(
                            width: 70,
                            height: 70,
                            child: Icon(
                              Icons.add,
                              size: 35,
                              color: Colors.black26,
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Stack(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.black12, width: 1),
                            ),
                            child: Image.asset(selected[index].getAssetPath()),
                          ),
                          Positioned(
                            bottom: 33,
                            right: 10,
                            child: IconButton(
                              icon: SvgPicture.asset(
                                'assets/images/delete.svg',
                                width: 15,
                                height: 15,
                              ),
                              onPressed: () {
                                selected.removeAt(index);
                              },
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            )),
      ],
    );
  }
}

void FacilitiesSelector(
    List<FacilitiesModel> selectable, RxList<FacilitiesModel> selected) {
  Get.bottomSheet(
    Container(
      height: 600, // Set the height to 600
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: GRADIANT_COLOR),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "بیش از یک مورد می توانید انتخاب کنید",
                  style: TextStyle(fontSize: 15, fontFamily: MAIN_FONT_FAMILY),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: Get.height / 3,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.8,
                    ),
                    itemCount: selectable.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 5),
                        child: _buildItem(selectable[index], selected),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: GRADIANT_COLOR),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: SvgPicture.asset(
                            'assets/images/tic.svg',
                            width: 33,
                            height: 26,
                          ),
                        ),
                        onPressed: () {
                          Get.back();
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    backgroundColor: Colors.white,
    enableDrag: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30.0),
        topRight: Radius.circular(30.0),
      ),
    ),
  );
}

Widget _buildItem(
    FacilitiesModel facilitiesModel, RxList<FacilitiesModel> selected) {
  return GestureDetector(
    onTap: () {
      if (selected.contains(facilitiesModel)) {
        selected.remove(facilitiesModel);
      } else {
        selected.add(facilitiesModel);
      }
    },
    child: SizedBox(
      height: 85,
      width: 140,
      child: Obx(() {
        bool isSelected = selected.contains(facilitiesModel);
        return Container(
          decoration: BoxDecoration(
            gradient: isSelected
                ? const LinearGradient(colors: GRADIANT_COLOR)
                : const LinearGradient(
                    colors: [Colors.black12, Colors.black12, Colors.black12]),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: EdgeInsets.all(isSelected ? 1 : 1),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.white,
                  width: isSelected ? 1 : 1.5,
                ),
              ),
              child: Image.asset(facilitiesModel.getAssetPath()),
            ),
          ),
        );
      }),
    ),
  );
}
