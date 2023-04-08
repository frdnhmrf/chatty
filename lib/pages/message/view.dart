import 'package:chatty/common/values/values.dart';
import 'package:chatty/pages/message/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessagePage extends GetView<MessageController> {
  const MessagePage({Key? key}) : super(key: key);

  Widget _headBar() {
    return Center(
      child: Container(
          width: 320.w,
          height: 40.w,
          margin: EdgeInsets.only(bottom: 20.h, top: 20.h),
          child: Row(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      controller.goProfile();
                    },
                    child: Container(
                      width: 44.h,
                      height: 44.h,
                      decoration: BoxDecoration(
                        color: AppColors.primarySecondaryBackground,
                        borderRadius: BorderRadius.all(Radius.circular(22.h)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1))
                        ],
                      ),
                      child: controller.state.head_detail.value.avatar == null
                          ? const Image(
                              image: AssetImage(
                                  "assets/images/account_header.png"),
                            )
                          : const Text("Hi"),
                    ),
                  ),
                  Positioned(
                      bottom: 5.w,
                      right: 0.w,
                      height: 14.w,
                      child: Container(
                        width: 14.w,
                        height: 14.w,
                        decoration: BoxDecoration(
                          color: AppColors.primaryElementStatus,
                          border: Border.all(
                            width: 2.w,
                            color: AppColors.primaryElementText,
                          ),
                          borderRadius: BorderRadius.circular(12.w),
                        ),
                      )),
                ],
              )
            ],
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  title: _headBar(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
