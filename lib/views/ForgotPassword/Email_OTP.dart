import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:healthcare/views/ForgotPassword/Reset_password.dart';
import 'package:healthcare/views/widgets/custom_button.dart';
import 'package:pinput/pinput.dart';

class EmailOTP extends StatefulWidget {
  const EmailOTP({super.key});

  @override
  State<EmailOTP> createState() => _EmailOTPState();
}

class _EmailOTPState extends State<EmailOTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(top: 12.h, right: 313.w),
                child: Container(
                    child: IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 122, right: 192),
              child: Container(
                child: const Text(
                  "Verify Code!",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h),
              child: RichText(
                  text: TextSpan(
                      text: "Please enter the code we just sent to email",
                      style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: greyColor),
                      children: <TextSpan>[
                    TextSpan(
                        text: " timsmxxx@email.com",
                        style: GoogleFonts.urbanist(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w500,
                            color: textColor))
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 27, right: 225),
              child: Container(
                child: const Text(
                  "Verification Code",
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 43.w),
              child: Pinput(
                focusedPinTheme: PinTheme(
                    height: 50.0,
                    width: 50.0,
                    textStyle: GoogleFonts.urbanist(
                        fontSize: 20.sp,
                        color: textColor,
                        fontWeight: FontWeight.w700),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: whiteColor,
                      border: Border.all(color: cyanColor),
                    )),
                length: 4,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                defaultPinTheme: PinTheme(
                    height: 50.0,
                    width: 50.0,
                    textStyle: GoogleFonts.urbanist(
                        fontSize: 20.sp,
                        color: textColor,
                        fontWeight: FontWeight.w700),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: fillColor.withOpacity(0.1),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 63),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: const Text(
                        "Resend code in",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color.fromRGBO(139, 139, 139, 1)),
                      ),
                    ),
                    Container(
                      child: const Text(
                        "40s",
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 250.h,
            ),
            CustomButton(
                text: 'Continue',
                onPressed: () {
                  Get.to(() => const ResetPassword());
                })
          ],
        ),
      ),
    );
  }
}
