import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:svg_icon/svg_icon.dart';

class BookingConfirmation extends StatefulWidget {
  const BookingConfirmation({super.key});

  @override
  State<BookingConfirmation> createState() => _BookingConfirmationState();
}

class _BookingConfirmationState extends State<BookingConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.arrow_back_ios)),
                    Text(
                      "Booking Detail",
                      style: GoogleFonts.urbanist(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                          color: textColor),
                    ),
                    const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.transparent,
                    )
                  ],
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Booking Info",
                  style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: textColor),
                ),
                Container(
                  width: 77.w,
                  height: 24.h,
                  decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(4.r)),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Confirmed",
                      style: GoogleFonts.urbanist(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          color: whiteColor),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 22.h,
            ),
            Container(
              width: 334.w,
              height: 48.h,
              padding: EdgeInsets.only(left: 12.w),
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(3, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  Image.asset("assets/images/alert-icon.png"),
                  SizedBox(
                    width: 12.w,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Tap ",
                          style: GoogleFonts.urbanist(
                              fontSize: 12.sp,
                              color: textColor,
                              fontWeight: FontWeight.w400),
                          children: [
                        TextSpan(
                            text: "Enter Waiting Room",
                            style: GoogleFonts.urbanist(
                                color: textColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 12.sp)),
                        TextSpan(
                          text: " no earlier to 15 min",
                          style: GoogleFonts.urbanist(
                              fontSize: 12.sp,
                              color: textColor,
                              fontWeight: FontWeight.w400),
                        )
                      ])),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: 335.w,
              height: 230.h,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: silverColor, borderRadius: BorderRadius.circular(5.r)),
              child: Column(
                children: [
                  ListTile(
                    leading: Container(
                        width: 42.w,
                        height: 42.h,
                        padding: const EdgeInsets.all(6.0),
                        decoration: const BoxDecoration(
                            color: whiteColor, // border: Border.all(),
                            shape: BoxShape.circle),
                        child: const SvgIcon("assets/icons/calender-icon.svg")),
                    title: Text(
                      "Date & Time",
                      style: GoogleFonts.urbanist(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: textColor),
                    ),
                    subtitle: Text(
                      "Thursday, 11 Jun 2022\n08:00 AM",
                      style: GoogleFonts.urbanist(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: greyColor),
                    ),
                    // isThreeLine: true,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.w),
                    child: const Divider(),
                  ),
                  ListTile(
                    leading: Container(
                        width: 42.w,
                        height: 42.h,
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                            color: greenColor, // border: Border.all(),
                            shape: BoxShape.circle),
                        child: const SvgIcon(
                          "assets/icons/video-type-icon.svg",
                          color: whiteColor,
                        )),
                    title: Text(
                      "Appointment Type",
                      style: GoogleFonts.urbanist(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: textColor),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Appointment Type",
                          style: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: greyColor),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2)),
                              backgroundColor: cyanColor,
                              minimumSize: Size(130.w, 30.h)),
                          child: Text(
                            "Enter Waiting Room",
                            style: GoogleFonts.urbanist(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: whiteColor),
                          ),
                        )
                      ],
                    ),
                    // isThreeLine: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 22.h,
            ),
            Text(
              "Doctor Info",
              style: GoogleFonts.urbanist(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: textColor),
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/doctor-nirmala.png",
                ),
              ),
              title: Text(
                "dr. Nirmala Azalea",
                style: GoogleFonts.urbanist(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: textColor),
              ),
              subtitle: Text(
                "Orthopedic",
                style: GoogleFonts.urbanist(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                    color: greyColor),
              ),
            ),
            SizedBox(
              height: 133.h,
            ),
            Text(
              "Payment Info",
              style: GoogleFonts.urbanist(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                  color: textColor),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Price",
                  style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: textColor),
                ),
                Text(
                  "\$35",
                  style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: textColor),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tax",
                  style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: textColor),
                ),
                Text(
                  "0",
                  style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: textColor),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment Total",
                  style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: textColor),
                ),
                Text(
                  "\$35",
                  style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: textColor),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }
}
