import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:healthcare/views/ForgotPassword/Verify_pass.dart';

import 'package:healthcare/views/Resigtration/Login.dart';
import 'package:healthcare/views/widgets/custom_button.dart';
import 'package:healthcare/views/widgets/custom_textfield.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 18.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SafeArea(
                  child: Container(
                      child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  )),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Container(
                  child: Text(
                    "New Password",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  child: Text(
                    "Create a new password that is safe and easy to remember",
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(177, 177, 177, 1)),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomTextfield(
                  text: "New Password",
                  controller: passwordController,
                  prefixIcons: Icon(Icons.lock_outline),
                ),
                CustomTextfield(
                    text: "Confirm New Password",
                    prefixIcons: Icon(Icons.lock_outline),
                    controller: confirmpasswordController),
              ],
            ),
            CustomButton(
                text: "Continue",
                onPressed: () {
                  Get.to(() => PasswordVerify());
                })
          ],
        ),
      ),
    );
  }
}
