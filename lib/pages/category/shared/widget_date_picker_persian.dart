import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class WidgetDatePickerPersian extends StatefulWidget {
  const WidgetDatePickerPersian({super.key});

  @override
  State<WidgetDatePickerPersian> createState() =>
      _WidgetDatePickerPersianState();
}

class _WidgetDatePickerPersianState extends State<WidgetDatePickerPersian> {
  String label = '';

  String selectedDate = Jalali.now().toJalaliDateTime();

  @override
  void initState() {
    super.initState();
    label = 'انتخاب تاریخ زمان';
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.white, Color(0xffE4F5F9)],
            ),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            physics: const BouncingScrollPhysics(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      imageButton(
                        onTap: () async {
                          Jalali? picked = await showPersianDatePicker(
                              context: context,
                              initialDate: Jalali.now(),
                              firstDate: Jalali(1385, 8),
                              lastDate: Jalali(1450, 9),
                              initialEntryMode:
                                  PDatePickerEntryMode.calendarOnly,
                              initialDatePickerMode: PDatePickerMode.year,
                              builder: (context, child) {
                                return Theme(
                                  data: ThemeData(
                                    dialogTheme: const DialogTheme(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(0)),
                                      ),
                                    ),
                                  ),
                                  child: child!,
                                );
                              });
                          if (picked != null && picked != selectedDate) {
                            setState(() {
                              label = picked.toJalaliDateTime();
                            });
                          }
                        },
                        image: '08',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget imageButton({
    required Function onTap,
    required String image,
  }) {
    return ScaleGesture(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                spreadRadius: 0,
                offset: Offset(0, 4),
                color: Color(0xff000000).withOpacity(0.3),
              ),
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Image.asset(
          'assets/images/$image.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class ScaleGesture extends StatefulWidget {
  final Widget child;
  final double scale;
  final Function onTap;

  ScaleGesture({
    required this.child,
    this.scale = 1.1,
    required this.onTap,
  });

  @override
  _ScaleGestureState createState() => _ScaleGestureState();
}

class _ScaleGestureState extends State<ScaleGesture> {
  late double scale;

  @override
  void initState() {
    scale = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (detail) {
        setState(() {
          scale = widget.scale;
        });
      },
      onTapCancel: () {
        setState(() {
          scale = 1;
        });
      },
      onTapUp: (datail) {
        setState(() {
          scale = 1;
        });
        widget?.onTap();
      },
      child: Transform.scale(
        scale: scale,
        child: widget.child,
      ),
    );
  }
}
