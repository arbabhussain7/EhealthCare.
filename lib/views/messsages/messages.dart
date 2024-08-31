import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:healthcare/views/messsages/text_message.dart';
import 'package:svg_icon/svg_icon.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 22.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Message",
                    style: GoogleFonts.urbanist(
                        fontSize: 32.sp,
                        fontWeight: FontWeight.w700,
                        color: blackColor),
                  ),
                  SizedBox(
                    width: 94.w,
                  ),
                  Container(
                    width: 42.w,
                    height: 42.h,
                    decoration: BoxDecoration(
                        color: silverColor, shape: BoxShape.circle),
                    child: Icon(
                      Icons.add,
                      color: blackColor,
                    ),
                  ),
                  Container(
                      width: 42.w,
                      height: 42.h,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: silverColor, shape: BoxShape.circle),
                      child: SvgIcon("assets/icons/notification-icon.svg")),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 265.w,
                    height: 48.h,
                    child: TextFormField(
                      style: GoogleFonts.urbanist(
                          fontSize: 17.sp, color: textColor),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            size: 34,
                            color: textColor,
                          ),
                          hintText: "Search message",
                          hintStyle: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: greyColor)),
                    ),
                  ),
                  Container(
                    width: 42.w,
                    height: 42.h,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: silverColor, shape: BoxShape.circle),
                    child: SvgIcon("assets/icons/filter-icon.svg"),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 645.h,
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Get.to(() => TextMessage());
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/doctor-warda.png"),
                        ),
                        title: Text(
                          "Beby Jovanca",
                          style: GoogleFonts.urbanist(
                              fontSize: 16.sp, fontWeight: FontWeight.w700),
                        ),
                        subtitle: Text(
                          "Hello doc!",
                          style: GoogleFonts.urbanist(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: textColor),
                        ),
                        trailing: Text(
                          "  11:20",
                          style: GoogleFonts.urbanist(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: greyColor),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider();
                  },
                  itemCount: 15),
            )
          ],
        ),
      ),
    )));
  }
}
