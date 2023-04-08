import 'package:chatty/common/values/values.dart';
import 'package:chatty/pages/profile/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfilePage extends GetView<ProfileController> {
  const ProfilePage({Key? key}) : super(key: key);

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        "Profile",
        style: TextStyle(
          color: AppColors.primaryText,
          fontSize: 16.sp,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _buildProfilePhoto() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120.w,
          height: 120.w,
          decoration: BoxDecoration(
            color: AppColors.primarySecondaryBackground,
            borderRadius: BorderRadius.circular(60.w),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(1, 2),
              )
            ],
          ),
          child: Image(
            width: 120.w,
            height: 120.w,
            image: const AssetImage("assets/images/account_header.png"),
          ),
        ),
        Positioned(
          bottom: 20.w,
          height: 35.w,
          right: 0.w,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 35.w,
              height: 35.w,
              decoration: BoxDecoration(
                color: AppColors.primaryElement,
                borderRadius: BorderRadius.circular(35.w),
              ),
              child: Image.asset('assets/icons/edit.png'),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildCompleteBtn() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 60.h, bottom: 30.h),
        width: 295.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.primaryElement,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(1, 2))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Complete",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryElementText,
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoutBtn() {
    return GestureDetector(
      onTap: () {
        Get.defaultDialog(
          content: const SizedBox(),
          title: "Are you sure to logout?",
          onConfirm: () {},
          textConfirm: "Confirm",
          onCancel: () {},
          textCancel: "Cancel",
          confirmTextColor: Colors.white,
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 60.h, bottom: 30.h),
        width: 295.w,
        height: 44.h,
        decoration: BoxDecoration(
          color: AppColors.primarySecondaryElementText,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(1, 2))
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Logout",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.primaryElementText,
                fontSize: 14.sp,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildProfilePhoto(),
                      _buildCompleteBtn(),
                      _buildLogoutBtn()
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
