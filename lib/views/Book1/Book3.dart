import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:healthcare/views/Book1/Book4.dart';
import 'package:healthcare/views/widgets/custom_button.dart';

class BookingStepThree extends StatefulWidget {
  const BookingStepThree({super.key});

  @override
  State<BookingStepThree> createState() => _BookingStepThreeState();
}

class _BookingStepThreeState extends State<BookingStepThree> {
  final List<String> listOfDiease = [
    'Appendicitis',
    'Backache',
    'Bone fracture',
    'Cold',
    'Constipation',
    'Cough',
    'Diarrhea',
    'Dizzy',
    ''
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 22.h,
                ),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 32,
                    )),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Booking Appointment",
                  style: GoogleFonts.urbanist(
                      color: textColor,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 57,
                ),
                Text(
                  "Select Reason ",
                  style: GoogleFonts.urbanist(
                      color: textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: TextFormField(
                    style: GoogleFonts.urbanist(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        color: textColor),
                    decoration: InputDecoration(
                        hintText: "Search doctor",
                        focusColor: cyanColor,
                        hintStyle: GoogleFonts.urbanist(
                            fontSize: 14.sp,
                            color: greyColor,
                            fontWeight: FontWeight.w400),
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                SizedBox(
                  height: 544.h,
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: listOfDiease.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          listOfDiease[index],
                          style: GoogleFonts.urbanist(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: textColor),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: silverColor,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        child: CustomButton(
            text: "Continue",
            onPressed: () {
              Get.to(() => BookingStepFour());
            }),
      ),
    );
  }
}
