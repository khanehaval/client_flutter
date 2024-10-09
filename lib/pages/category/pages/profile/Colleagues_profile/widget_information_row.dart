import 'package:flutter/material.dart';

class WidgetInformationRow extends StatelessWidget {
  const WidgetInformationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(children: [
        Container(
          width: 371,
          height: 50,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'امتیاز',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: 'Aban Bold',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      '4.7',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: 'Aban Bold',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Container(
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'تعداد آگهی',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: 'Aban Bold',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      '125',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: 'Aban Bold',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 15),
              Container(
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'میزان رضایت مندی',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: 'Aban Bold',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      '% 92',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: 'Aban Bold',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
              Container(
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'محدوده فعالیت',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: 'Aban Bold',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      'سراسر کشور',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303030),
                        fontSize: 14,
                        fontFamily: 'Aban Bold',
                        fontWeight: FontWeight.w400,
                        height: 0.10,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
