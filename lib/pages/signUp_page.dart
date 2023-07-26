// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: camel_case_types
class signUpPage extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  signUpPage({super.key});

  final purpleColor = const Color(0xff6688FF);
  final darkTextColor = const Color(0xff1F1A3D);
  final lightTextColor = const Color(0xff999999);
  final textFieldColor = const Color(0xffF5F6FA);
  final borderColor = const Color(0xffD9D9D9);
  Widget getTextfeild({required String hint}) {
    // ignore: prefer_const_constructors
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.r),
          borderSide: const BorderSide(color: Colors.transparent, width: 0),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        filled: true,
        fillColor: textFieldColor,
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 52.h,
                ),
                Text(
                  "Sign Up To Mastermind ",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: lightTextColor,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Wrap(
                  children: [
                    Text(
                      "Already have account?",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: darkTextColor,
                      ),
                    ),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: purpleColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 44.h,
                ),
                getTextfeild(hint: "Full Name"),
                SizedBox(
                  height: 16.h,
                ),
                getTextfeild(hint: "Email"),
                SizedBox(
                  height: 16.h,
                ),
                getTextfeild(hint: "Password"),
                SizedBox(
                  height: 16.h,
                ),
                getTextfeild(hint: "Confirm Password"),
                SizedBox(
                  height: 16.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(purpleColor),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 14.h),
                      ),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                    child: const Text("Create Acount"),
                  ),
                ),
                SizedBox(height: 16.h),
                Row(
                  children: [
                    // ignore: prefer_const_constructors
                    Expanded(child: Divider()),
                    SizedBox(width: 16.w),
                    Text(
                      "or sign up via",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          color: lightTextColor),
                    ),
                    SizedBox(width: 16.w),
                    // ignore: prefer_const_constructors
                    Expanded(child: Divider()),
                  ],
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(
                          color: borderColor,
                        ),
                      ),
                      foregroundColor: MaterialStateProperty.all(darkTextColor),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(vertical: 14.h),
                      ),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                    child: const Text("Google"),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Wrap(
                  children: [
                    Text(
                      "By signig up to Mastermind you agree to our",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: lightTextColor,
                      ),
                    ),
                    Text(
                      "terms and conditions",
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w700,
                        color: purpleColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
