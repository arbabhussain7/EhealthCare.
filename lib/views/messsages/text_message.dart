import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:svg_icon/svg_icon.dart';

class TextMessage extends StatefulWidget {
  const TextMessage({super.key});

  @override
  State<TextMessage> createState() => _TextMessageState();
}

class _TextMessageState extends State<TextMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whiteColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios),
          color: blackColor,
        ),
        title: ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage("assets/images/doctor-warda.png"),
          ),
          title: Text(
            "Beby Jovanca",
            style: GoogleFonts.urbanist(
                fontSize: 16.sp, fontWeight: FontWeight.w700, color: textColor),
          ),
          subtitle: Text(
            "Orthopedic",
            style: GoogleFonts.urbanist(
                fontSize: 14.sp, fontWeight: FontWeight.w400, color: greyColor),
          ),
        ),
      ),
      backgroundColor: silverColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 6.h, horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextFormField(
              style: GoogleFonts.urbanist(
                  fontSize: 22.w,
                  fontWeight: FontWeight.w500,
                  color: textColor),
              // maxLines: 2,
              decoration: InputDecoration(
                  // contentPadding: EdgeInsets.only(top: 32.h),
                  filled: true,
                  fillColor: whiteColor,
                  prefixIcon: Container(
                    padding: const EdgeInsets.all(12),
                    width: 14.w,
                    height: 14.h,
                    child: InkWell(
                      onTap: () {},
                      child: const SvgIcon(
                        "assets/icons/paperclip-icon.svg",
                      ),
                    ),
                  ),
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: cyanColor,
                      )),
                  hintText: "Type message...",
                  hintStyle: GoogleFonts.urbanist(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: greyColor),
                  border: const OutlineInputBorder(),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: greyColor))),
            ),
          ],
        ),
      ),
    );
  }
}
