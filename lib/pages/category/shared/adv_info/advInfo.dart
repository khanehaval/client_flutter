import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switachable.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';

class AdvInfo extends StatefulWidget {
  final AdvInfoModel advInfoModel;

  const AdvInfo(this.advInfoModel, {super.key});

  @override
  _AdvInfoState createState() => _AdvInfoState();
}

class _AdvInfoState extends State<AdvInfo> {
  final RxBool proposalTitle = false.obs;
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;

  @override
  void initState() {
    super.initState();
    _titleController =
        TextEditingController(text: "آپارتمان 120 متری به صورت اقساطی");
    _descriptionController =
        TextEditingController(text: widget.advInfoModel.description);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "عنوان و توضیحات آگهی",
          style: TextStyle(fontFamily: MAIN_FONT_FAMILY),
        ),
        const SizedBox(height: 10),
        switchable(proposalTitle, "عنوان پیشنهادی خانه اول"),
        const SizedBox(height: 5),
        Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (proposalTitle.value)
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "*",
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromRGBO(
                                156,
                                64,
                                64,
                                1,
                              )),
                        ),
                        Text(
                          " عنوان آگهی ",
                          style: TextStyle(
                            fontFamily: 'Iran Sans',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(166, 166, 166, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              Container(
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  textAlign: TextAlign.right,
                  controller: _titleController,
                  enabled: proposalTitle.value,
                  onChanged: (value) {
                    if (proposalTitle.value) {
                      widget.advInfoModel.title = value;
                    }
                  },
                ),
              ),
              const SizedBox(height: 20),
              if (!proposalTitle.value) ...[
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "*",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(
                              156,
                              64,
                              64,
                              1,
                            )),
                      ),
                      Text(
                        " عنوان آگهی",
                        style: TextStyle(
                          fontFamily: 'Iran Sans',
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(166, 166, 166, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                _buildTextField(
                  hintText: "تایپ کنید",
                  onChanged: (value) => widget.advInfoModel.title = value,
                  enabled: !proposalTitle.value,
                ),
                const SizedBox(height: 20),
              ],
              const Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "توضیحات آگهی",
                    style: TextStyle(
                      fontFamily: 'Iran Sans',
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(166, 166, 166, 1),
                    ),
                  ),
                ),
              ),
              _buildTextField(
                hintText: "تایپ کنید",
                maxLines: 5,
                onChanged: (value) => widget.advInfoModel.description = value,
                enabled: true,
                controller: _descriptionController,
              ),
            ],
          );
        }),
      ],
    );
  }

  Widget _buildTextField({
    required String hintText,
    int? maxLines,
    required ValueChanged<String> onChanged,
    required bool enabled,
    TextEditingController? controller,
  }) {
    return TextField(
      textAlign: TextAlign.right,
      maxLines: maxLines,
      onChanged: onChanged,
      enabled: enabled,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: 'Iran Sans',
          fontWeight: FontWeight.w400,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color.fromRGBO(23, 102, 175, 1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color.fromRGBO(23, 102, 175, 1),
          ),
        ),
      ),
    );
  }
}
