import 'package:chatty/common/values/values.dart';
import 'package:chatty/pages/frame/sign_in/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignInPage extends GetView<SignInController> {
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

  Widget _buildThridPartyLogin(String loginType, String logo) {
    return GestureDetector(
      onTap: () {
        controller.handleSignIn("google");
      },
      child: Container(
        width: 295.w,
        height: 44.h,
        padding: EdgeInsets.all(10.h),
        margin: EdgeInsets.only(top: 15.h),
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
          mainAxisAlignment:
              logo == "" ? MainAxisAlignment.center : MainAxisAlignment.start,
          children: [
            logo == ""
                ? Container()
                : Container(
                    padding: EdgeInsets.only(left: 40.w, right: 30.w),
                    child: Image.asset('assets/icons/$logo.png'),
                  ),
            Container(
              child: Text(
                "Sign in with $loginType",
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
      ),
    );
  }

  Widget _buildOrWidget() {
    return Container(
      margin: EdgeInsets.only(top: 20.h, bottom: 35.h),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              indent: 50,
              height: 2.h,
              color: AppColors.primarySecondaryElementText,
            ),
          ),
          const Text("  or  "),
          Expanded(
            child: Divider(
              endIndent: 50,
              height: 2.h,
              color: AppColors.primarySecondaryElementText,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpWidget() {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Text(
            "Already have an account?",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.primaryText,
              fontWeight: FontWeight.normal,
              fontSize: 12.sp,
            ),
          ),
          GestureDetector(
            child: Text(
              "Sign up here",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryElement,
                fontWeight: FontWeight.normal,
                fontSize: 12.sp,
              ),
            ),
          ),
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
          children: [
            _buildLogo(),
            _buildThridPartyLogin("Google", "google"),
            _buildThridPartyLogin("Facebook", "facebook"),
            _buildThridPartyLogin("Apple", "apple"),
            _buildOrWidget(),
            _buildThridPartyLogin("phone number", ""),
            SizedBox(height: 35.h),
            _buildSignUpWidget()
          ],
        )));
  }
}
