import 'package:chatty/common/values/values.dart';
import 'package:chatty/frame/welcome/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<WelcomeController> {
  const SignInPage({Key? key}) : super(key: key);

  Widget _buildLogo() {
    return Container(
      margin: EdgeInsets.only(top: 100.h, bottom: 80.h),
      child: Text(
        'Chatty .',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.primaryText,
          fontWeight: FontWeight.bold,
          fontSize: 34.sp,
        ),
      ),
    );
  }

  Widget _buildThridPartyGoogleLogin(String loginType) {
    return Container(
      width: 295.w,
      height: 44.h,
      padding: EdgeInsets.all(10.h),
      decoration: BoxDecoration(
          color: AppColors.primaryBackground,
          borderRadius: BorderRadius.all(Radius.circular(5.r)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            )
          ]),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 40.w, right: 30.w),
            child: Image.asset('assets/icons/google.png'),
          ),
          Container(
            child: Text(
              "Sign in with Google",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryText,
                fontWeight: FontWeight.normal,
                fontSize: 14.sp,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.primarySecondaryBackground,
        body: Center(
            child: Column(
          children: [_buildLogo(), _buildThridPartyGoogleLogin("Google")],
        )));
  }
}
