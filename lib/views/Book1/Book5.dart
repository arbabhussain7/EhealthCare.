import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:healthcare/views/Book1/Book6.dart';
import 'package:healthcare/views/widgets/custom_button.dart';
import 'package:svg_icon/svg_icon.dart';

class BookingStepFive extends StatefulWidget {
  const BookingStepFive({super.key});

  @override
  State<BookingStepFive> createState() => _BookingStepFiveState();
}

class _BookingStepFiveState extends State<BookingStepFive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12.h,
              ),
              Container(
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 32,
                    )),
              ),
              SizedBox(
                height: 22.h,
              ),
              Text(
                "Summary",
                style: GoogleFonts.urbanist(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w700,
                    color: textColor),
              ),
              SizedBox(
                height: 77.h,
              ),
              Text(
                "Booking Info",
                style: GoogleFonts.urbanist(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: textColor),
              ),
              SizedBox(
                height: 22.h,
              ),
              ListTile(
                leading: Container(
                    width: 42.w,
                    height: 42.h,
                    padding: const EdgeInsets.all(6.0),
                    decoration: const BoxDecoration(
                        color: silverColor,
                        // border: Border.all(),
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
              SizedBox(
                height: 12.h,
              ),
              const Divider(
                color: silverColor,
              ),
              SizedBox(
                height: 124.h,
              ),
              Text(
                "Doctor Info",
                style: GoogleFonts.urbanist(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: textColor),
              ),
              SizedBox(
                height: 12.h,
              ),
              ListTile(
                leading: const CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/doctor-nirmala.png"),
                ),
                title: Text(
                  "Dr. Nirmala Azalea",
                  style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: textColor),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Orthopedic",
                      style: GoogleFonts.urbanist(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: greyColor),
                    ),
                    Container(
                      width: 83.w,
                      height: 24.h,
                      decoration: BoxDecoration(
                          color: lightgreenColor,
                          borderRadius: BorderRadius.circular(5)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Backache",
                          style: GoogleFonts.urbanist(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: greenColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 22.h,
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
              ListTile(
                leading: Container(
                  width: 69.w,
                  height: 44.h,
                  padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 3.w),
                  decoration: BoxDecoration(
                      border: Border.all(color: logoColor),
                      borderRadius: BorderRadius.circular(5)),
                  child: Image.asset(
                    'assets/images/easypaisa-logo.png',
                    // width: 53.w,
                    // height: 17.h,
                  ),
                ),
                title: Text(
                  "Easypaisa",
                  style: GoogleFonts.urbanist(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: textColor),
                ),
                subtitle: Text(
                  "**** **** 223",
                  style: GoogleFonts.urbanist(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: greyColor),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Price",
                    style: GoogleFonts.urbanist(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: textColor),
                  ),
                  Text(
                    "\$ 12",
                    style: GoogleFonts.urbanist(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                  )
                ],
              ),
              SizedBox(
                height: 12.h,
              ),
              CustomButton(
                  text: "Pay Now",
                  onPressed: () {
                    Get.to(() => const BookingStepSix());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
