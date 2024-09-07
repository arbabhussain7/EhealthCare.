import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:healthcare/views/profile/edit_account.dart';

class AccountDetail extends StatefulWidget {
  const AccountDetail({super.key});

  @override
  State<AccountDetail> createState() => _AccountDetailState();
}

class _AccountDetailState extends State<AccountDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back_ios)),
                  Text(
                    "Account Information",
                    style: GoogleFonts.urbanist(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                        color: textColor),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => const EditAccount());
                    },
                    child: Container(
                        width: 42.w,
                        height: 42.h,
                        decoration: const BoxDecoration(
                            color: softGreyColor, shape: BoxShape.circle),
                        child: Image.asset("assets/images/edit-icon.png")),
                  )
                ],
              ),
              SizedBox(
                height: 22.h,
              ),
              Text(
                "Personal",
                style: GoogleFonts.urbanist(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: greyColor),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 335.w,
                height: 210.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: softGreyColor),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Ehealthcare Id",
                              style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                            ),
                            Text(
                              "1092302",
                              style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: textColor),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Username",
                              style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                            ),
                            Text(
                              "zhafira",
                              style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "First Name       ",
                              style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                            ),
                            Text(
                              "Zhafira",
                              style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: textColor),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Last Name",
                              style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                            ),
                            Text(
                              "Azalea",
                              style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Date of Birth",
                              style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                            ),
                            Text(
                              "Feb 12, 1994",
                              style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: textColor),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Gender",
                              style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                            ),
                            Text(
                              "Female",
                              style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 42.h,
              ),
              Text(
                "Personal",
                style: GoogleFonts.urbanist(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: greyColor),
              ),
              SizedBox(
                height: 12.h,
              ),
              Container(
                width: 335.w,
                height: 210.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    color: softGreyColor),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Number",
                              style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                            ),
                            Text(
                              "081892319321",
                              style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: textColor),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email",
                              style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                            ),
                            Text(
                              "zhafira@gmail.com",
                              style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "City            ",
                              style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                            ),
                            Text(
                              "Bandung",
                              style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: textColor),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Province              ",
                              style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                            ),
                            Text(
                              "West Java",
                              style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Address     ",
                              style: GoogleFonts.urbanist(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                            ),
                            Text(
                              "Jl. Sekar Wangi 20 A, Bancangan                ",
                              style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
