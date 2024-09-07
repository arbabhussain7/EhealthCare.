import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:healthcare/views/Book1/Book1.dart';
import 'package:healthcare/views/Booking/Book_confirm.dart';
import 'package:svg_icon/svg_icon.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  String dateString = '2002-02-27';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 372.w,
                height: 342.h,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomRight,
                        colors: [gridentcyanColor, gridentwhiteColor])),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.w, vertical: 12.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/patient.png"),
                          ),
                          Container(
                            width: 42.w,
                            padding: const EdgeInsets.all(8),
                            height: 42.h,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border(),
                                color: whiteColor),
                            child: const SvgIcon(
                                "assets/icons/notification-icon.svg"),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 335.w,
                          height: 167.h,
                          decoration: BoxDecoration(
                              color: whiteColor,
                              borderRadius: BorderRadius.circular(12)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "WELCOME BACK!",
                                style: GoogleFonts.urbanist(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: textColor),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                "Zhafira Azalea",
                                style: GoogleFonts.urbanist(
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w700,
                                    color: textColor),
                              ),
                              SizedBox(
                                height: 12.h,
                              ),
                              Text(
                                "Have a nice day 😊",
                                style: GoogleFonts.urbanist(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    color: textColor),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 154, left: 92),
                          child: InkWell(
                            onTap: () {
                              Get.to(() => const Bookingstepone());
                            },
                            child: Container(
                              width: 146.w,
                              height: 48.h,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    colors: [
                                      buttongredientcyan,
                                      buttongredientscyan,
                                      buttongredientscyan
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(32.r)),
                              child: TextButton(
                                onPressed: () {
                                  Get.to(() => const Bookingstepone());
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SvgIcon(
                                      "assets/icons/button-diamond-icon.svg",
                                      color: whiteColor,
                                      width: 20,
                                      height: 20,
                                    ),
                                    Text(
                                      "Find Doctor",
                                      style: GoogleFonts.urbanist(
                                          color: whiteColor,
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 375.w,
                height: 474.h,
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(42.r),
                        topRight: Radius.circular(42.r))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.w, vertical: 22.h),
                      child: Text(
                        "EHealthcare Services",
                        style: GoogleFonts.urbanist(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: textColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 33.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => const Bookingstepone());
                            },
                            child: Column(
                              children: [
                                Container(
                                    width: 65.w,
                                    height: 65.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: silverColor),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                        "assets/images/consultant.png")),
                                Text(
                                  "Consultation",
                                  style: GoogleFonts.urbanist(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: textColor),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                    width: 65.w,
                                    height: 65.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: silverColor),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                        "assets/images/medicine.png")),
                                Text(
                                  "Medicines",
                                  style: GoogleFonts.urbanist(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: textColor),
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                    width: 65.w,
                                    height: 65.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: silverColor),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.asset(
                                        "assets/images/Delivery.png")),
                                Text(
                                  "Shipment",
                                  style: GoogleFonts.urbanist(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w600,
                                      color: textColor),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Appointment",
                            style: GoogleFonts.urbanist(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w700,
                                color: textColor),
                          ),
                          Text(
                            "See All",
                            style: GoogleFonts.urbanist(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: cyanColor),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22.w),
                      child: Container(
                        height: 150.h,
                        padding: const EdgeInsets.all(12),
                        width: 335.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    3, 3), // changes position of shadow
                              ),
                            ],
                            color: whiteColor),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Appointment date",
                                      style: GoogleFonts.urbanist(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                          color: textColor),
                                    ),
                                    Text(
                                      "Wed Jun 20",
                                      style: GoogleFonts.urbanist(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                          color: textColor),
                                    ),
                                  ],
                                ),
                                const SvgIcon("assets/icons/menu-icon.svg")
                              ],
                            ),
                            const Divider(
                              color: silverColor,
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
                                trailing: InkWell(
                                  onTap: () {
                                    Get.to(() => const BookingConfirmation());
                                  },
                                  child: SvgIcon(
                                    "assets/icons/forward-icon.svg",
                                    width: 15.w,
                                    height: 15.h,
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
