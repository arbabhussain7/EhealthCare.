import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:healthcare/views/Book1/Book2.dart';

class Bookingstepone extends StatefulWidget {
  const Bookingstepone({super.key});

  @override
  State<Bookingstepone> createState() => _BookingsteponeState();
}

class _BookingsteponeState extends State<Bookingstepone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                  "Choose Doctor",
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
                  height: 12.h,
                ),
                SizedBox(
                  height: 682.h,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => BookingStepTwo());
                    },
                    child: ListView.separated(
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          children: [
                            ListTile(
                              title: Text(
                                "Dr. Nirmala Azalea",
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
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/doctor.png"),
                              ),
                              trailing: Text(
                                "\$12",
                                style: GoogleFonts.urbanist(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w700,
                                    color: textColor),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 59.h, left: 74.w),
                              child: Row(
                                children: [
                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    ignoreGestures: false,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 12,
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  SizedBox(
                                    width: 12.w,
                                  ),
                                  Text(
                                    "50+",
                                    style: GoogleFonts.inter(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w500,
                                        color: blackColor),
                                  )
                                ],
                              ),
                            )
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext, index) {
                        return Divider();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
