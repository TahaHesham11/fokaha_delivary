import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/color.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/notification/components/notification_item.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/notification/controller/notification_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';
import 'package:get/get.dart';

class NotificationView extends GetView<NotificationController>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: CustomAppBar(isImage: false,),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        
            Container(
              width: 336.w,
              height: 50.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: colorForm,
              ),
              child: Center(
                child: MyText(
                  text: 'notifications'.tr,
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
              return NotificationItem();
            },
            itemCount: 5,
            )
          ],
        ),
      ),
    );
  }
}