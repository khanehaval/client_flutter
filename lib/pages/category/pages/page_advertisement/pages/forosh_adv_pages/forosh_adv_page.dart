import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/category/models/AdvInfoModel.dart';
import 'package:flutter_application_1/pages/category/shared/adv_info/advInfo.dart';
import 'package:flutter_application_1/pages/category/shared/constant.dart';
import 'package:flutter_application_1/pages/category/shared/facilities_selector.dart';
import 'package:flutter_application_1/pages/category/shared/images_picker/images_picker.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/Widget_NoeSanad.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/jahat_sakhteman.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/servises_wc.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_bazsazi.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_jenskaf.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_kabinet.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_sen_bana.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_system_garm.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_system_sarmayesh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tamin_abe_garm.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_Otagh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_aghsat.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_koletabagheh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_tedad_vahed_dar%20tabagheh.dart';
import 'package:flutter_application_1/pages/category/shared/more_emkanat/widget_time_aghsat.dart';
import 'package:flutter_application_1/pages/category/shared/namayesh.dart';
import 'package:flutter_application_1/pages/category/shared/shated_widget.dart';
import 'package:flutter_application_1/pages/category/shared/switchItem.dart';
import 'package:flutter_application_1/pages/category/shared/twoItemInRow.dart';
import 'package:flutter_application_1/pages/category/shared/widget/route_widget.dart';
import 'package:flutter_application_1/pages/category/shared/widget/switachable.dart';
import 'package:flutter_application_1/pages/category/shared/widget/text_field.dart';
import 'package:flutter_application_1/repo/account_repo.dart';
import 'package:flutter_application_1/services/advertisment_service.dart';
import 'package:flutter_application_1/services/http_service.dart';
import 'package:flutter_application_1/services/models/server_model/sale_aparteman.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:gradient_icon/gradient_icon.dart';
import '../../../../models/FacilitiesModel.dart';

class ForoshAdvPage extends StatefulWidget {
  @override
  State<ForoshAdvPage> createState() => _ForoshAdvPageState();
}

class _ForoshAdvPageState extends State<ForoshAdvPage> {
  final _accountRepo = GetIt.I.get<AccountRepo>();
  final ImageController imageController = Get.put(ImageController());
  SaleApartemanServerModel saleApartemanServerModel =
      SaleApartemanServerModel();
  final Httpservice _httpService = Httpservice();
  final aghsatType = "".obs;
  final onvan = "".obs;
  int selectedIndex = 0;
  final submit = false.obs;
  final hasAnbari = false.obs;
  final hasAsansor = false.obs;
  final hasParking = false.obs;
  final _onePrice = 0.0.obs;
  final _allPriceTextController = TextEditingController();
  final _metragTextController = TextEditingController();
  final loanInstallmentAmount = TextEditingController();
  final prepayment = TextEditingController();
  final AdvertisementService _advertisementService = AdvertisementService();
  final RxList<String> selectedImagesPath = RxList<String>();
  final _facilities = <FacilitiesModel>[].obs;
  final _buildingSideController = TextEditingController();
  final _TedadVahedTabaghehController = TextEditingController();
  final _buildFloorsCountController = TextEditingController();
  final _timeAghsatController = TextEditingController();
  final _buildRoomsCountController = TextEditingController();
  final _buildDocumentController = TextEditingController();
  final _buildFloorController = TextEditingController();
  final _buildAllFloorsCountController = TextEditingController();
  final _reBuildController = TextEditingController();
  final _totalInstallmentsController = TextEditingController();
  final _flooringController = TextEditingController();
  final _cabinetController = TextEditingController();
  final _coolingSystemController = TextEditingController();
  final _SenBanaController = TextEditingController();
  final _heatingSystemController = TextEditingController();
  final _abeGarmController = TextEditingController();
  final _buttonIsPressed = false.obs;
  final _wcController = TextEditingController();
  final ValueNotifier<String> _persianWords = ValueNotifier<String>('');

  bool _isValidNumber(String value) {
    return int.tryParse(value) != null;
  }

  final _advInfo = AdvInfoModel();

  String numberToFarsiWords(int number) {
    if (number == 0) return 'صفر';
    const ones = [
      'صفر',
      'یک',
      'دو',
      'سه',
      'چهار',
      'پنج',
      'شش',
      'هفت',
      'هشت',
      'نه'
    ];
    const teens = [
      'ده',
      'یازده',
      'دوازده',
      'سیزده',
      'چهارده',
      'پانزده',
      'شانزده',
      'هفده',
      'هجده',
      'نوزده'
    ];
    const tens = [
      '',
      '',
      'بیست',
      'سی',
      'چهل',
      'پنجاه',
      'شصت',
      'هفتاد',
      'هشتاد',
      'نود'
    ];
    const hundreds = [
      '',
      'صد',
      'دویست',
      'سیصد',
      'چهارصد',
      'پانصد',
      'ششصد',
      'هفتصد',
      'هشتصد',
      'نهصد'
    ];
    const thousands = ['', 'هزار', 'میلیون', 'میلیارد'];

    String convertBelowThousand(int num) {
      if (num == 0) return '';
      if (num < 10) return ones[num];
      if (num < 20) return teens[num - 10];
      if (num < 100) {
        int tenPart = num ~/ 10;
        int onePart = num % 10;
        return '${tens[tenPart]}${onePart > 0 ? ' و ${ones[onePart]}' : ''}';
      } else {
        int hundredPart = num ~/ 100;
        int restPart = num % 100;
        return '${hundreds[hundredPart]}${restPart > 0 ? ' و ${convertBelowThousand(restPart)}' : ''}';
      }
    }

    String result = '';
    int unit = 0;
    while (number > 0) {
      int chunk = number % 1000;
      if (chunk > 0) {
        String chunkText = convertBelowThousand(chunk);
        result = '${chunkText} ${thousands[unit]} ${result}'.trim();
      }
      number ~/= 1000;
      unit++;
    }

    return result.trim();
  }

  void _updatePersianWords() {
    final text = _metragTextController.text;
    if (text.isNotEmpty) {
      final number = int.tryParse(text) ?? 0;
      _persianWords.value = numberToFarsiWords(number);
    } else {
      _persianWords.value = '';
    }
  }

  @override
  void initState() {
    super.initState();
    _metragTextController.addListener(_updatePersianWords);
    _allPriceTextController.addListener(_checkFields);
    _metragTextController.addListener(_checkFields);
    _buildRoomsCountController.addListener(_checkFields);
    _buildFloorController.addListener(_checkFields);
  }

  void _checkFields() {
    if (_allPriceTextController.text.isNotEmpty &&
        _metragTextController.text.isNotEmpty &&
        _buildFloorController.text.isNotEmpty &&
        _buildRoomsCountController.text.isNotEmpty) {
      submit.value = true;
    } else {
      submit.value = false;
    }
  }

  @override
  void dispose() {
    _allPriceTextController.dispose();
    _metragTextController.dispose();
    _buildFloorController.dispose();
    _persianWords.dispose();
    super.dispose();
  }

  Future<void> _saveAdvertisement() async {
    if (submit.value) {
      try {
        final success = await _accountRepo.saleAparteman(
          saleApartemanData: saleApartemanServerModel,
        );
        if (success) {
          Fluttertoast.showToast(
            msg: "اطلاعات با موفقیت ارسال شد",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        } else {
          Fluttertoast.showToast(
            msg: "خطا در ارسال اطلاعات",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      } catch (e) {
        Fluttertoast.showToast(
          msg: "خطا در ارتباط با سرور",
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        print("Error during advertisement submission: $e");
      } finally {
        _buttonIsPressed.value = false;
      }
    } else {
      Fluttertoast.showToast(
        msg: "لطفا همه فیلدهای دارای * را پر کنید",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }

  String? firstImagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildaAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Column(
            children: [
              route(
                  ["ثبت آگهی اکونومی", "فروش مسکونی", "خرید و فروش آپارتمان"]),
              SizedBox(height: 30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "*",
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: const Color.fromRGBO(156, 64, 64, 1),
                      fontFamily: MAIN_FONT_FAMILY,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Padding(
                    padding: EdgeInsets.only(right: 7.w),
                    child: Text(
                      "(تومان) قیمت کل",
                      style: TextStyle(
                        color: const Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 13.sp,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              SizedBox(
                height: 41.h,
                width: 0.95.sw,
                child: TextField(
                  style:
                      TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 13.sp),
                  textAlign: TextAlign.right,
                  controller: _metragTextController,
                  onChanged: (_) {
                    saleApartemanServerModel.totalPrice = int.tryParse(_) ?? 0;
                  },
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: 'تایپ کنید',
                    hintStyle: TextStyle(
                      fontSize: 13.sp,
                      fontFamily: MAIN_FONT_FAMILY,
                      color: const Color(0xFFA6A6A6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(23, 102, 175, 1),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(23, 102, 175, 1),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Align(
                alignment: Alignment.centerRight,
                child: ValueListenableBuilder<String>(
                  valueListenable: _persianWords,
                  builder: (context, value, child) {
                    return Text(
                      "قیمت به حروف: $value  تومان",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontFamily: MAIN_FONT_FAMILY,
                        color: const Color.fromRGBO(99, 99, 99, 1),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20.h),
              const Divider(
                color: Color.fromRGBO(226, 226, 226, 1),
                endIndent: 6,
                indent: 6,
              ),
              SizedBox(height: 20.h),
              TwoItemInRow1(
                label1: "قیمت هر متر مربع (تومان)",
                label2: "متراژ",
                widget1: Obx(
                  () => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                          width: 1, color: Theme.of(context).hintColor),
                    ),
                    height: 33.h,
                    width: getPageWidth(),
                    child: Center(
                      child: Text(
                        _onePrice.string,
                        style: TextStyle(
                            fontFamily: MAIN_FONT_FAMILY, fontSize: 13.sp),
                      ),
                    ),
                  ),
                ),
                widget2: SizedBox(
                  height: 33.h,
                  width: getPageWidth(),
                  child: TextField(
                    style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY, fontSize: 13.sp),
                    textAlign: TextAlign.right,
                    keyboardType: TextInputType.number,
                    controller: _allPriceTextController,
                    onChanged: (_) {
                      if (_isValidNumber(_)) {
                        _onePrice.value = int.parse(_) /
                            int.parse(_metragTextController.text);
                        saleApartemanServerModel.meterage = int.parse(_);
                      }
                    },
                    decoration: InputDecoration(
                      hintText: "0",
                      hintStyle: TextStyle(
                        fontSize: 13.sp,
                        fontFamily: MAIN_FONT_FAMILY,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFA6A6A6),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(23, 102, 175, 1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(23, 102, 175, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              const Divider(
                color: Color.fromRGBO(226, 226, 226, 1),
              ),
              SizedBox(height: 20.h),
              aghsatiForoshWidget(context),
              SizedBox(height: 20.h),
              const Divider(
                color: Color.fromRGBO(226, 226, 226, 1),
                endIndent: 6,
                indent: 6,
              ),
              SizedBox(height: 20.h),
              melkByVamBanki(context),
              SizedBox(height: 20.h),
              const Divider(
                color: Color.fromRGBO(226, 226, 226, 1),
                endIndent: 6,
                indent: 6,
              ),
              SizedBox(height: 20.h),
              TwoItemInRow2(
                label1: "تعداد اتاق ",
                label2: "سن بنا",
                widget1: ReadOnlyTextField(_buildRoomsCountController,
                    fontSize: 12.sp, () {
                  TedadOtagh((selectedKey, selectedLabel) {
                    _buildRoomsCountController.text = selectedLabel;
                    saleApartemanServerModel.room = selectedKey;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_SenBanaController, () {
                  SenBana((selectedOption) {
                    _SenBanaController.text = selectedOption;
                    saleApartemanServerModel.age = selectedOption;
                  });
                }, width: getPageWidth(), fontSize: 12.sp),
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(right: 5.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "*",
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: const Color.fromRGBO(156, 64, 64, 1),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Text(
                      "طبقه ",
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: const Color.fromRGBO(99, 99, 99, 1),
                        fontFamily: MAIN_FONT_FAMILY,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
              ReadOnlyTextField(_buildFloorController, fontSize: 13.sp, () {
                TedadKoleTabagheh((selectedKey, selectedLabel) {
                  _buildFloorController.text = selectedLabel;
                  saleApartemanServerModel.floorNumber = selectedKey;
                });
              }),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  switchable(hasAnbari, "انباری"),
                  switchable(hasAsansor, "آسانسور"),
                  switchable(hasParking, "پارکینگ"),
                ],
              ),
              SizedBox(height: 10.h),
              const Divider(
                color: Color.fromRGBO(226, 226, 226, 1),
                endIndent: 6,
                indent: 6,
              ),
              SizedBox(height: 10.h),
              Text(
                "سایر ویژگی ها",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 15.sp),
              ),
              SizedBox(height: 15.h),
              TwoItemInRow(
                label1: "تعداد کل طبقات",
                label2: "نوع سند",
                widget1: ReadOnlyTextField(_buildFloorsCountController,
                    fontSize: 12.sp, () {
                  TedadKoleTabagheh((selectedKey, selectedLabel) {
                    _buildFloorController.text = selectedLabel;
                    saleApartemanServerModel.floorNumber = selectedKey;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(
                  _buildDocumentController,
                  fontSize: 12.sp,
                  () {
                    NoeSanad((selectedKey, selectedLabel) {
                      _buildDocumentController.text = selectedLabel;
                      saleApartemanServerModel.docType = selectedKey;
                    });
                  },
                  width: getPageWidth(),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TwoItemInRow(
                label1: "تعداد کل واحد ها",
                label2: "تعداد واحد در طبقه",
                widget1: InputTextField(
                  _buildAllFloorsCountController,
                  width: getPageWidth(),
                ),
                widget2: ReadOnlyTextField(
                  _TedadVahedTabaghehController,
                  fontSize: 12.sp,
                  () {
                    TedadVahedTabagheh(
                      (selectedKey, selectedLabel) {
                        _TedadVahedTabaghehController.text = selectedLabel;
                        saleApartemanServerModel.unitInFloor = selectedKey;
                      },
                    );
                  },
                  width: getPageWidth(),
                ),
              ),
              SizedBox(height: 15.h),
              TwoItemInRow(
                label1: "بازسازی",
                label2: "جهت ساختمان",
                widget1: ReadOnlyTextField(
                  _reBuildController,
                  () {
                    BazSazi(
                      (selectedKey, selectedLabel) {
                        _reBuildController.text = selectedLabel;
                        saleApartemanServerModel.reconstruct = selectedKey;
                      },
                    );
                  },
                  width: getPageWidth(),
                  fontSize: 11.sp,
                ),
                widget2: ReadOnlyTextField(
                  _buildingSideController,
                  fontSize: 12.sp,
                  () {
                    jahatSakhteman(
                      (selectedKey, selectedLabel) {
                        _buildingSideController.text = selectedLabel;
                        saleApartemanServerModel.buildingSide = selectedKey;
                      },
                    );
                  },
                  width: getPageWidth(),
                ),
              ),
              SizedBox(height: 20.h),
              const Divider(
                color: Color.fromRGBO(226, 226, 226, 1),
                endIndent: 6,
                indent: 6,
              ),
              SizedBox(height: 10.h),
              Text(
                "امکانات",
                style: TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 16.sp),
              ),
              SizedBox(height: 15.h),
              TwoItemInRow(
                label1: "نوع کابینت",
                label2: "جنس کف",
                widget1:
                    ReadOnlyTextField(_cabinetController, fontSize: 12.sp, () {
                  Kabinet((selectedKey, selectedLabel) {
                    _cabinetController.text = selectedLabel;
                    saleApartemanServerModel.cabinetType = selectedKey;
                  });
                }, width: getPageWidth()),
                widget2:
                    ReadOnlyTextField(_flooringController, fontSize: 12.sp, () {
                  JensKaf((selectedKey, selectedLabel) {
                    _flooringController.text = selectedLabel;
                    saleApartemanServerModel.flooringMaterialType = selectedKey;
                  });
                }, width: getPageWidth()),
              ),
              SizedBox(height: 15.h),
              TwoItemInRow(
                label1: "نوع سیستم گرمایش",
                label2: "نوع سیستم سرمایش",
                widget1: ReadOnlyTextField(_heatingSystemController,
                    fontSize: 12.sp, () {
                  Garmayesh((selectedKey, selectedLabel) {
                    _heatingSystemController.text = selectedLabel;
                    saleApartemanServerModel.heatingSystemType = selectedKey;
                  });
                }, width: getPageWidth()),
                widget2: ReadOnlyTextField(_coolingSystemController,
                    fontSize: 12.sp, () {
                  Sarmayesh((selectedKey, selectedLabel) {
                    _coolingSystemController.text = selectedLabel;
                    saleApartemanServerModel.coolingSystemType = selectedKey;
                  });
                }, width: getPageWidth()),
              ),
              SizedBox(height: 15.h),
              TwoItemInRow(
                label1: "سرویس بهداشتی",
                label2: "تامین کننده آب گرم",
                widget1: ReadOnlyTextField(_wcController, fontSize: 12.sp, () {
                  Wc((selectedKey, selectedLabel) {
                    _wcController.text = selectedLabel;
                    saleApartemanServerModel.wc = selectedKey;
                  });
                }, width: getPageWidth()),
                widget2:
                    ReadOnlyTextField(_abeGarmController, fontSize: 12.sp, () {
                  AbeGarm((selectedKey, selectedLabel) {
                    _abeGarmController.text = selectedLabel;
                    saleApartemanServerModel.heatWaterSystemType = selectedKey;
                  });
                }, width: getPageWidth()),
              ),
              SizedBox(height: 40.h),
              Stack(
                children: [
                  FacilitiesSelectorWidget(
                    selectable: [
                      Teras(),
                      MasterRoom(),
                      CenterAntenna(),
                      Labi(),
                      Sona(),
                      SwimmingPool(),
                      RoofGarden(),
                      Bathtub(),
                      Gym(),
                      AlAchiq(),
                      ConferenceHall(),
                      GameRoom(),
                    ],
                    selected: _facilities,
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              const Divider(
                color: Color.fromRGBO(226, 226, 226, 1),
                endIndent: 6,
                indent: 6,
              ),
              SizedBox(height: 20.h),
              ImagesPicker(selectedImagesPath: selectedImagesPath),
              SizedBox(height: 30.h),
              const Divider(
                color: Color.fromRGBO(226, 226, 226, 1),
                endIndent: 6,
                indent: 6,
              ),
              SizedBox(height: 20.h),
              AdvInfo(_advInfo),
              SizedBox(height: 30.h),
              GestureDetector(
                onTap: () {
                  if (submit.value) {
                    Get.to(() => NamayeshAgahi(), arguments: {
                      'images': saleApartemanServerModel.images,
                      'wc': saleApartemanServerModel.wc,
                      'hasLobby': saleApartemanServerModel.hasLobby,
                      'hasBathTub': saleApartemanServerModel.hasBathTub,
                      'hasMasterRoom': saleApartemanServerModel.hasMasterRoom,
                      'hasBalcony': saleApartemanServerModel.hasBalcony,
                      'hasSwimmingPool':
                          saleApartemanServerModel.hasSwimmingPool,
                      'hasRoofGarden': saleApartemanServerModel.hasRoofGarden,
                      'hasGamingRoom': saleApartemanServerModel.hasGamingRoom,
                      'hasGazebo': saleApartemanServerModel.hasGazebo,
                      'hasSportingHall':
                          saleApartemanServerModel.hasSportingHall,
                      'hasConferenceHall':
                          saleApartemanServerModel.hasConferenceHall,
                      'hasSaunaJacuzzi':
                          saleApartemanServerModel.hasSaunaJacuzzi,
                    });
                  } else {
                    Fluttertoast.showToast(
                      msg: "لطفا همه فیلدهای الزامی را پر کنید",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                    );
                  }
                },
                child: Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text(
                            "... تایید و ادامه",
                            style: submit.value
                                ? TextStyle(
                                    fontSize: 20.sp,
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Colors.black,
                                  )
                                : TextStyle(
                                    fontSize: 20.sp,
                                    fontFamily: MAIN_FONT_FAMILY,
                                    color: Colors.black38,
                                  ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(width: 3.w),
                        GradientIcon(
                          icon: Icons.double_arrow,
                          gradient: LinearGradient(
                            colors: submit.value
                                ? GRADIANT_COLOR1
                                : BLACK_12_GRADIANT_COLOR,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          offset: const Offset(0, 0),
                          size: 34.sp,
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget onvanWidget(BuildContext context) {
    final isSwitched = true.obs;
    return Column(
      children: [
        switchable(isSwitched, "فروش به صورت اقساطی"),
        Obx(() => isSwitched.isTrue
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 41.h,
                    width: 1.sw / 1.117,
                    child: TextField(
                      onTap: () {
                        saleApartemanServerModel.title;
                      },
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'آپارتمان 120 متری به صورت اقساطی',
                        hintStyle: TextStyle(
                          color: const Color(0xFFA6A6A6),
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 13.sp,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : const SizedBox.shrink()),
      ],
    );
  }

  Widget aghsatiForoshWidget(BuildContext context) {
    final isSwitched = true.obs;
    final ImageController imageController = Get.put(ImageController());

    return Column(
      children: [
        switchable(isSwitched, "فروش به صورت اقساطی"),
        Obx(() => isSwitched.isTrue
            ? Column(
                children: [
                  SizedBox(height: 20.h),
                  Text(
                    "در صورت وارد نکردن آیتم ها، آگهی فقط با عنوان اقساطی منتشر میگردد",
                    style:
                        TextStyle(fontFamily: MAIN_FONT_FAMILY, fontSize: 9.sp),
                  ),
                  SizedBox(height: 20.h),
                  TwoItemInRow(
                    label1: "مبلغ قسط (تومان)",
                    label2: "پیش پرداخت (تومان)",
                    widget1: SizedBox(
                      height: 41.h,
                      width: getPageWidth(),
                      child: TextField(
                        controller: loanInstallmentAmount,
                        focusNode: FocusNode(),
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                          fontSize: 12.sp,
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (_) {
                          saleApartemanServerModel.loanInstallmentAmount =
                              int.parse(_);
                        },
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'تایپ کنید',
                          hintStyle: TextStyle(
                            fontSize: 12.sp,
                            fontFamily: MAIN_FONT_FAMILY_MEDIUM,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(23, 102, 175, 1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(23, 102, 175, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                    widget2: SizedBox(
                      height: 41.h,
                      width: getPageWidth(),
                      child: TextField(
                        controller: prepayment,
                        focusNode: FocusNode(),
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 13.sp,
                        ),
                        keyboardType: TextInputType.number,
                        onChanged: (_) {
                          saleApartemanServerModel.prepayment = int.parse(_);
                        },
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'تایپ کنید',
                          hintStyle: TextStyle(
                            fontSize: 13.sp,
                            fontFamily: MAIN_FONT_FAMILY,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFA6A6A6),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(23, 102, 175, 1),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(23, 102, 175, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 17.h),
                  TwoItemInRow(
                    label1: "زمان دریافت اقساط",
                    label2: "تعداد اقساط",
                    widget1: ReadOnlyTextField(_timeAghsatController, () {
                      TimeAghsat((selectedKey, selectedLabel) {
                        _timeAghsatController.text = selectedLabel;
                        saleApartemanServerModel.installmentPaybackTime =
                            selectedKey;
                      });
                    }, width: getPageWidth(), fontSize: 13.sp),
                    widget2:
                        ReadOnlyTextField(_totalInstallmentsController, () {
                      TedadAghsat((selectedKey, selectedLabel) {
                        _totalInstallmentsController.text = selectedLabel;
                        saleApartemanServerModel.installmentNumber =
                            selectedKey;
                      });
                    }, width: getPageWidth()),
                  ),
                  SizedBox(width: 25.w, height: 15.h),
                  SwitchItems(
                    onSelected: (_) {
                      saleApartemanServerModel.installmentPledge;
                    },
                    items: const ["ضامن", "سفته", "چک"],
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    "قیمت نهایی ملک (پیش پرداخت + اقساط ) : 13.200.000.000 تومان",
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 9.sp,
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              )
            : const SizedBox.shrink()),
      ],
    );
  }

  Widget melkByVamBanki(BuildContext context) {
    final _totalInstallmentsController = TextEditingController();
    SaleApartemanServerModel saleApartemanServerModel =
        SaleApartemanServerModel();

    final isSwitched = true.obs;
    return Column(
      children: [
        switchable(isSwitched, "ملک با وام بانکی"),
        SizedBox(height: 10.h),
        Obx(() => isSwitched.isTrue
            ? Column(children: [
                RichText(
                  text: TextSpan(
                    text: "در صورت وارد نکردن آیتم ها، آگهی فقط با عنوان  ",
                    style: TextStyle(
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 11.3.sp,
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'دارای وام',
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 11.sp,
                          color: const Color.fromRGBO(156, 64, 64, 1),
                        ),
                      ),
                      TextSpan(
                        text: ' منتشر میگردد',
                        style: TextStyle(
                          fontFamily: MAIN_FONT_FAMILY,
                          fontSize: 12.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                TwoItemInRow(
                  label1: "مبلغ اقساط",
                  label2: "میزان وام (تومان)",
                  widget1: SizedBox(
                    height: 33.h,
                    width: getPageWidth(),
                    child: TextField(
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 12.sp,
                      ),
                      onChanged: (_) {
                        saleApartemanServerModel.installmentAmount =
                            int.parse(_);
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تایپ کنید',
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: MAIN_FONT_FAMILY,
                          color: const Color(0xFFA6A6A6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(23, 102, 175, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(23, 102, 175, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  widget2: SizedBox(
                    height: 33.h,
                    width: getPageWidth(),
                    child: TextField(
                      style: TextStyle(
                        fontFamily: MAIN_FONT_FAMILY,
                        fontSize: 12.sp,
                      ),
                      onChanged: (_) {
                        saleApartemanServerModel.loanInstallmentAmount =
                            int.parse(_);
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'تایپ کنید',
                        hintStyle: TextStyle(
                          fontSize: 13.sp,
                          fontFamily: MAIN_FONT_FAMILY,
                          color: const Color(0xFFA6A6A6),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(23, 102, 175, 1),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(23, 102, 175, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "تعداد اقساط (هر ماه)  ",
                    style: TextStyle(
                      color: const Color.fromRGBO(99, 99, 99, 1),
                      fontFamily: MAIN_FONT_FAMILY,
                      fontSize: 13.sp,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 5.h),
                ReadOnlyTextField(
                  _totalInstallmentsController,
                  () {
                    TedadAghsat((selectedKey, selectedLabel) {
                      _totalInstallmentsController.text = selectedLabel;
                      saleApartemanServerModel.installmentNumber = selectedKey;
                    });
                  },
                ),
                SizedBox(height: 20.h),
              ])
            : const SizedBox.shrink()),
      ],
    );
  }
}

class CustomTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = 10.0;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = 400.0;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}

class ImageController extends GetxController {
  var sliderValue = 0.0.obs;

  void updateSliderValue(double value) {
    sliderValue.value = value;
  }
}
