import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../models/FacilitiesModel.dart';

class FacilitiesSelectorWidget extends StatelessWidget {
  final String title;
  final List<FacilitiesModel> selectable;
  final RxList<FacilitiesModel> selected;
  FacilitiesSelectorWidget({
    Key? key,
    this.title = "سایر امکانات",
    required this.selectable,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16),
        ),
        const SizedBox(height: 25),
        Obx(
          () {
            int rows = (selected.length / 3).ceil();
            return SizedBox(
              height: 70.0 * rows +
                  50, // Adjust the height based on the number of rows
              child: Wrap(
                spacing: 21,
                runSpacing: 21,
                children: List.generate(
                  selected.length + 1,
                  (index) {
                    if (index == selected.length) {
                      return _buildAddButton(context);
                    } else {
                      return _buildSelectedItem(index);
                    }
                  },
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _buildAddButton(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        FocusScope.of(context).unfocus();
        FacilitiesSelector(selectable, selected);
      },
      child: DottedBorder(
        dashPattern: const [4, 4],
        radius: const Radius.circular(10),
        borderType: BorderType.RRect,
        color: const Color.fromARGB(115, 172, 172, 172),
        strokeWidth: 2,
        child: const SizedBox(
          width: 63,
          height: 63,
          child: Icon(
            Icons.add,
            size: 35,
            color: Colors.black26,
          ),
        ),
      ),
    );
  }

  Widget _buildSelectedItem(int index) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black12, width: 1),
          ),
          child: Image.asset(selected[index].getAssetPath()),
        ),
        Positioned(
          top: -22,
          left: -30,
          right: 30,
          child: Center(
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/images/delete.svg',
                width: 22,
                height: 22,
              ),
              onPressed: () {
                selected.removeAt(index);
              },
            ),
          ),
        ),
      ],
    );
  }
}

void FacilitiesSelector(
  List<FacilitiesModel> selectable,
  RxList<FacilitiesModel> selected,
) {
  Get.bottomSheet(
    Container(
      height: 600,
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
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(1),
            borderRadius: const BorderRadius.only(
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
                        child: _FacilityItem(
                          facilitiesModel: selectable[index],
                          selected: selected,
                        ),
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

class _FacilityItem extends StatelessWidget {
  final FacilitiesModel facilitiesModel;
  final RxList<FacilitiesModel> selected;

  const _FacilityItem({
    Key? key,
    required this.facilitiesModel,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        child: Obx(
          () {
            bool isSelected = selected.contains(facilitiesModel);
            return Container(
              decoration: BoxDecoration(
                gradient: isSelected
                    ? const LinearGradient(colors: GRADIANT_COLOR)
                    : const LinearGradient(colors: [
                        Colors.black12,
                        Colors.black12,
                        Colors.black12,
                      ]),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(1),
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
          },
        ),
      ),
    );
  }
}
