import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare/constant/colors_const.dart';
import 'package:healthcare/views/profile/profile_screen.dart';
import 'package:healthcare/views/widgets/custom_button.dart';
import 'package:healthcare/views/widgets/profile_textfield.dart';

class EditAccount extends StatefulWidget {
  const EditAccount({super.key});

  @override
  State<EditAccount> createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  int _groupValue = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 12.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: () {
                              Get.back();
                            },
                            child: const Icon(Icons.arrow_back_ios)),
                        Text(
                          "Edit Account",
                          style: GoogleFonts.montserrat(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w700,
                              color: textColor),
                        ),
                        const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.transparent,
                        )
                      ],
                    )),
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
                  height: 22.h,
                ),
                const ProfileTextField(
                  text: "Ehealthcare Id",
                  inputtext: TextInputType.number,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ProfileTextField(
                  text: "Username",
                  inputtext: TextInputType.text,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ProfileTextField(
                  text: "First Name",
                  inputtext: TextInputType.text,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ProfileTextField(
                  text: "Last Name",
                  inputtext: TextInputType.text,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ProfileTextField(
                  text: "Date of Birth",
                  inputtext: TextInputType.text,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 4.w, vertical: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gender",
                        style: GoogleFonts.urbanist(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            color: greyColor),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                              value: 0,
                              groupValue: _groupValue,
                              title: const Text("Male"),
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue!),
                              activeColor: cyanColor,
                              selected: false,
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: RadioListTile(
                              value: 1,
                              groupValue: _groupValue,
                              title: const Text("Female"),
                              onChanged: (newValue) =>
                                  setState(() => _groupValue = newValue!),
                              activeColor: cyanColor,
                              selected: false,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Text(
                    "Contact",
                    style: GoogleFonts.urbanist(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                        color: greyColor),
                  ),
                ),
                const ProfileTextField(
                    text: "Type your phone number",
                    inputtext: TextInputType.number),
                SizedBox(
                  height: 22.h,
                ),
                const ProfileTextField(
                    text: "Type your email",
                    inputtext: TextInputType.emailAddress),
                SizedBox(
                  height: 22.h,
                ),
                const ProfileTextField(
                    text: "City", inputtext: TextInputType.text),
                SizedBox(
                  height: 22.h,
                ),
                const ProfileTextField(
                    text: "Province", inputtext: TextInputType.text),
                SizedBox(
                  height: 22.h,
                ),
                const ProfileTextField(
                    text: "Address", inputtext: TextInputType.text),
                SizedBox(
                  height: 22.h,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        child: CustomButton(
            text: "Save Changes",
            onPressed: () {
              Get.offAll(() => const ProfileScreen());
            }),
      ),
    );
  }
}
