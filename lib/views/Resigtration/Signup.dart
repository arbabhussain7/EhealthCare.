import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:healthcare/views/Resigtration/Login.dart';
import 'package:healthcare/views/Resigtration/OTP.dart';
import 'package:healthcare/views/widgets/custom_button.dart';
import 'package:healthcare/views/widgets/custom_textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SigninState();
}

class _SigninState extends State<SignUp> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 90.h, left: 16.w),
                child: Container(
                  child: Text("Welcome Back!",
                      style: GoogleFonts.urbanist(
                          fontSize: 24.sp,
                          color: textColor,
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 20.w),
                child: Container(
                  child: Text("Create account and enjoy all services",
                      style: GoogleFonts.urbanist(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400,
                          color: greyColor)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 45.h, left: 35.w),
                child: Container(
                  width: 335.w,
                  height: 48.h,
                  // color: Color.fromRGBO(233, 236, 242, 1),
                  decoration:
                      BoxDecoration(border: Border.all(color: silverColor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
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
                              color: blackAccColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Divider(color: silverColor)),
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
                    Expanded(
                      child: Divider(color: silverColor),
                    ),
                  ],
                ),
              ),
              CustomTextfield(
                text: "Type your username",
                controller: usernameController,
                prefixIcons: Icon(Icons.person_outlined),
              ),
              CustomTextfield(
                text: "Type your  email",
                controller: emailController,
                prefixIcons: Icon(Icons.email_outlined),
              ),
              CustomTextfield(
                controller: passwordController,
                text: "Type your password",
                prefixIcons: Icon(
                  Icons.lock_outline,
                  color: blackAccColor,
                ),
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Checkbox(
                        value: isChecked,
                        activeColor: cyanColor,
                        onChanged: (newbool) {
                          setState(() {
                            isChecked = newbool;
                          });
                        }),
                    Row(
                      children: [
                        Text(
                          "I agree to the company",
                          style: GoogleFonts.urbanist(
                              color: greyColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "Term and condition",
                          style: GoogleFonts.urbanist(
                              color: cyanColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              CustomButton(
                text: "Sign Up",
                onPressed: () {
                  Get.to(() => OTPAddress());
                },
              ),
              SizedBox(
                height: 32.h,
              ),
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    child: Text(
                      "Have an account?",
                      style: GoogleFonts.urbanist(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: greyColor),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => Signin());
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.urbanist(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: cyanColor),
                    ),
                  )
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
