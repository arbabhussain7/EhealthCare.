import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:healthcare/views/AIRecommendation/ai_recommendation.dart';
import 'package:healthcare/views/BottomNavBar/bottom_Navbar.dart';
import 'package:healthcare/views/ForgotPassword/Email_Reset.dart';

import 'package:healthcare/views/widgets/custom_button.dart';
import 'package:healthcare/views/widgets/custom_textfield.dart';

// import 'package:healthcare/Home/home.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();
final confirmpasswordController = TextEditingController();

class _SigninState extends State<Signin> {
  int groupValue = -1;
  bool isSelectedClick = false;
  GlobalKey<FormState> key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 90.h, left: 16.w),
                  child: Container(
                    child: Text("Welcome Back!",
                        style: GoogleFonts.urbanist(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                            color: textColor)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.h, left: 20.w),
                  child: Container(
                    child: Text("Sign In to your account",
                        style: GoogleFonts.urbanist(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                            color: greyColor)),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 335.w,
                    height: 48.h,
                    // color: Color.fromRGBO(233, 236, 242, 1),
                    decoration:
                        BoxDecoration(border: Border.all(color: silverColor)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20.w,
                          height: 20.h,
                          child: Image.asset("assets/images/Google.png"),
                        ),
                        SizedBox(width: 12.w),
                        Container(
                          child: Text(
                            "Sign in with Google",
                            style: GoogleFonts.urbanist(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: blackAccentColor),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Expanded(child: Divider(color: silverColor)),
                      SizedBox(
                        width: 4.w,
                      ),
                      Text(
                        "OR",
                        style: GoogleFonts.montserrat(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: greyColor),
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      const Expanded(
                        child: Divider(color: silverColor),
                      ),
                    ],
                  ),
                ),
                CustomTextfield(
                  controller: emailController,
                  text: "Type of your email",
                  prefixIcons: const Icon(Icons.email_outlined),
                  // icons: Icon(Icons.email
                  // ),
                ),
                CustomTextfield(
                  controller: passwordController,
                  prefixIcons: const Icon(Icons.lock_outline),
                  text: "Type your password",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Your Password ";
                    }
                    return null;
                  },
                  suffixIcons: null,
                  secureText: true,
                  isPassword: true,
                  inputType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => const EmailResend());
                      },
                      child: Text(
                        "Forgot Password",
                        style: GoogleFonts.urbanist(
                            color: cyanColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 33.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Text(
                    "Choose Your Service Access",
                    style: GoogleFonts.urbanist(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: greyColor),
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        value: 0,
                        groupValue: groupValue,
                        title: Text(
                          "Access Paid Services",
                          style: GoogleFonts.urbanist(
                            fontSize: 12.h,
                          ),
                        ),
                        onChanged: (newValue) =>
                            setState(() => groupValue = newValue!),
                        activeColor: cyanColor,
                        selected: false,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: RadioListTile(
                        value: 1,
                        groupValue: groupValue,
                        title: Text(
                          "Access Basic Services",
                          style: GoogleFonts.urbanist(
                            fontSize: 12.h,
                          ),
                        ),
                        onChanged: (newValue) =>
                            setState(() => groupValue = newValue!),
                        activeColor: cyanColor,
                        selected: false,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 32.h,
                ),
                CustomButton(
                    text: "Login",
                    onPressed: () {
                      // if (key!.currentState!.validate()) {
                      //   Get.to(() => BottomNavBar());
                      // }
                      Get.to(const BottomNavBar());
                    }),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 12.h),
                  child: Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: const Text(
                              "Don’t have account?",
                              style: TextStyle(
                                  fontSize: 15, color: greyAccentColor),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => const AiRecommendation());
                            },
                            child: Text(
                              "Sign Up",
                              style: GoogleFonts.urbanist(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700,
                                  color: cyanColor),
                            ),
                          )
                        ]),
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
