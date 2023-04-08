import 'package:chatty/common/values/values.dart';
import 'package:chatty/message/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessagePage extends GetView<MessageController> {
  const MessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primarySecondaryBackground,
      body: SizedBox(
        width: 360.w,
        height: 780.h,
      ),
    );
  }
}
