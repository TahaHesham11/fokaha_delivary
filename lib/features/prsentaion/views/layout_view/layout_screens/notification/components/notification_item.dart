import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';
import 'package:get/get.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                width: 330.w,
                height: 110.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: const Color(0xffFFFFFF),
                ),
                padding: EdgeInsetsDirectional.all(12.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                       Image.asset(AppAssets.check),
                        SizedBox(width: 5.w,),
                        MyText(
                            text: 'order_confirmed'.tr,
                            fontSize: 14.sp,
                            color: const Color(0xff22BB55)
                        ),
                        const Spacer(),
                        GestureDetector(
                            onTap: (){},
                            child: const Icon(Icons.close))
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsetsDirectional.only(top: 10.0.r),
                      child: MyText(
                          text:' هذا النص هو مثال لنص يمكت تغييرههذا النص هو مثال لنص يمكت تغييرههذا النص هو مثال لنص يمكت تغييره',
                          fontWeight: FontWeight.w400,
                          fontSize: 11.sp,
                          color: const Color(0xff666666)
                      ),
                    )
                  ],
                )
            ),
          ],
        ),
        Container(
            margin: EdgeInsetsDirectional.only(top: 10.r),
            width: 330.w,
            height: 110.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: const Color(0xffFFFFFF),
            ),
            padding: EdgeInsetsDirectional.all(12.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(AppAssets.danger),
                    SizedBox(width: 5.w,),
                    Expanded(
                      child: MyText(
                          text:'cancelled_order'.tr,
                          fontSize: 14.sp,
                          maxLine: 1,
                          color: const Color(0xffEE4444)
                      ),
                    ),

                    GestureDetector(
                        onTap: (){},
                        child: const Icon(Icons.close))
                  ],
                ),
                Padding(
                  padding:  EdgeInsetsDirectional.only(top: 10.0.r),
                  child: MyText(
                      text: ' هذا النص هو مثال لنص يمكت تغييرههذا النص هو مثال لنص يمكت تغييرههذا النص هو مثال لنص يمكت تغييره',
                      fontWeight: FontWeight.w400,
                      fontSize: 11.sp,
                      color: const Color(0xff666666)
                  ),
                )
              ],
            )
        ),
      ],
    );
  }
}