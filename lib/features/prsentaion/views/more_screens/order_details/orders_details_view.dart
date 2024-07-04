import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/core/constants/color.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../widgets/my_button.dart';
import '../chat_user/chat_user_view.dart';
import 'controller/order_details_controller.dart';

class OrderDetailsView extends GetView<OrderDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isImage: false,
      ),
      body: Padding(
        padding:  EdgeInsets.all(12.0.r),
        child: Column(
          children: [
            Row(
              children: [
                MyText(text: 'current_requests'.tr),
                MyText(
                  text: 'order_details'.tr,
                  color: myColor,
                ),
              ],
            ),
            Container(
              width: 343.w,
              height: 150.h,
              padding: EdgeInsetsDirectional.all(10.r),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  color: Color(0xffD9D9D9)),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyText(
                      text: '1223',
                      color: Color(0xff565656),
                      fontSize: 12.sp,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff565656),
                        ),
                        MyText(
                          text: 'restaurant_address'.tr,
                          fontSize: 12.sp,
                          color: Color(0xff565656),
                        ),
                        Expanded(
                            child: MyText(
                          text:
                              'عنوان االمطعم',
                          maxLine: 1,
                          fontSize: 12.sp,
                          color: Color(0xff565656),
                        )),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 5.0.r),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Color(0xff565656),
                          ),
                          MyText(
                            text: 'restaurant_address'.tr,
                            fontSize: 12.sp,
                            color: Color(0xff565656),
                          ),
                          Expanded(
                              child: MyText(
                            text: 'عنوان المطعم',
                            maxLine: 1,
                            fontSize: 12.sp,
                            color: Color(0xff565656),
                          )),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(AppAssets.time),
                        MyText(
                          text: 're_delivery'.tr,
                          fontSize: 12.sp,
                          color: Color(0xff565656),
                        ),
                        MyText(
                          text: '12:10',
                          fontSize: 12.sp,
                          color: Color(0xff565656),
                        ),
                      ],
                    ),
                    MyText(
                      text: '15 وجبه ميكس جريل + 7 كانز بيسي',
                      fontSize: 12.sp,
                      color: Color(0xff565656),
                    )
                  ],
                ),
              ),
            ),
            MyButton(
              onPressed: () {},
              isImage: false,
              margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
              title: 'show_map'.tr,
              image: AppAssets.location,
              fontSize: 8.sp,
              background: myColor,
              mainAxisAlignment: MainAxisAlignment.end,
              borderRadius: BorderRadius.circular(10.r),
              width: 336.w,
              height: 50.h,
              isSpace: false,
              titleColor: Colors.white,
            ),
            MyButton(
              onPressed: () {
                Get.to(() =>  ChatUserView(),preventDuplicates: false);

              },
              isImage: false,
              title: 'messaging'.tr,
              image: AppAssets.chat,
              fontSize: 8.sp,
              background: myColor,
              mainAxisAlignment: MainAxisAlignment.end,
              borderRadius: BorderRadius.circular(10.r),
              width: 336.w,
              height: 50.h,
              isSpace: false,
              widthImage: 33.w,
              heightImage: 33.h,
              titleColor: Colors.white,
            ),
            MyButton(
              onPressed: () {},
              isImage: false,
              title: 'call'.tr,
              image: AppAssets.call,
              fontSize: 8.sp,
              background: Colors.green,
              mainAxisAlignment: MainAxisAlignment.end,
              borderRadius: BorderRadius.circular(10.r),
              width: 336.w,
              height: 50.h,
              isSpace: false,
              widthImage: 33.w,
              heightImage: 33.h,
              titleColor: Colors.white,
              margin: EdgeInsetsDirectional.only(top: 20.r),
            ),
            Spacer(),
            Padding(
              padding:  EdgeInsets.only(bottom: 20.0.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyButton(
                    onPressed: () {},
                    text: 'delivered_handed'.tr,
                    width: 111.w,
                    fontSize: 12.sp,

                    background: Color(0xff666666),
                  ),
                  MyButton(
                    onPressed: () {},
                    text: 'reached'.tr,
                    width: 111.w,
                    fontSize: 12.sp,
                    background: Color(0xff666666),
                    margin: EdgeInsetsDirectional.only(start: 10.r),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
