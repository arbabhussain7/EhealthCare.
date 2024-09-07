import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:healthcare/views/Booking/Book_confirm.dart';
import 'package:svg_icon/svg_icon.dart';

class Appointments extends StatefulWidget {
  const Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Appointments",
                    style: GoogleFonts.urbanist(
                        color: textColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                      width: 42.w,
                      height: 42.h,
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          color: silverColor, shape: BoxShape.circle),
                      child:
                          const SvgIcon("assets/icons/notification-icon.svg")),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                    fillColor: silverColor,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 30,
                      color: darkpurpleColor,
                    ),
                    hintText: "Search",
                    hintStyle: GoogleFonts.urbanist(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: darkpurpleColor),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(29.r),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: silverColor),
                        borderRadius: BorderRadius.circular(29.r))),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 22.h),
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
                          offset:
                              const Offset(3, 3), // changes position of shadow
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
              Container(
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
                        offset:
                            const Offset(3, 3), // changes position of shadow
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
                            "assets/images/doctor-dani.png",
                          ),
                        ),
                        title: Text(
                          "Dr. Narendra Joko",
                          style: GoogleFonts.urbanist(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                              color: textColor),
                        ),
                        subtitle: Text(
                          "Obstetrician",
                          style: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: greyColor),
                        ),
                        trailing: InkWell(
                          onTap: () {},
                          child: SvgIcon(
                            "assets/icons/forward-icon.svg",
                            width: 15.w,
                            height: 15.h,
                          ),
                        )),
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
