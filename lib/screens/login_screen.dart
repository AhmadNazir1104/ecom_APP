import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:shopping_app/screens/sign_up_screen.dart';
import 'package:shopping_app/utility/app_colors.dart';

import 'user_dashboard/dashboard_screen.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/food.jpg'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.transparent,
              Colors.transparent,
              Color(0xff161d27).withOpacity(0.9),
              Color(0xff161d27),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Sign In!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 38.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "Time to Shopping, let's Sign in",
                  style:
                      TextStyle(color: Colors.grey.shade500, fontSize: 16.sp),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 50.h,
                  margin: EdgeInsets.only(left: 40.w, right: 40.h),
                  child: TextField(
                    style: TextStyle(fontSize: 16.sp, color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.grey.shade700),
                      filled: true,
                      fillColor: Color(0xff161d27).withOpacity(0.9),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide(color: AppColors.yellowColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.r),
                          borderSide: BorderSide(color: AppColors.yellowColor)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(left: 40.w, right: 40.w),
                  child: Center(
                    child: TextField(
                      obscureText: true,
                      style:
                          TextStyle(fontSize: 16, color: AppColors.yellowColor),
                      decoration: InputDecoration(
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey.shade700),
                        filled: true,
                        fillColor: Color(0xff161d27).withOpacity(0.9),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide:
                                BorderSide(color: AppColors.yellowColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.r),
                            borderSide:
                                BorderSide(color: AppColors.yellowColor)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Forgot Password?",
                  style: TextStyle(
                      color: AppColors.yellowColor,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  height: 50.h,
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 40.w, right: 40.w),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return DashboardScreen();
                        },
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        primary: AppColors.yellowColor),
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "It's your first time here?",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return SignUpScreen();
                          },
                        ));
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationThickness: 1.5.h,
                            color: AppColors.yellowColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
