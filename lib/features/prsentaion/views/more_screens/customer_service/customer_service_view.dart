import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/color.dart';
import '../../../widgets/my_text.dart';
import 'controller/customer_service_controller.dart';

class CustomServiceView extends GetView<CustomerServiceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isImage: false,
      ),
      body: Column(
        children: [
          Container(
            width: 336.w,
            height: 50.h,
            margin: EdgeInsetsDirectional.only(bottom: 30.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: colorForm,
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: 'technical_support'.tr,
                  ),
                  Image.asset(
                    AppAssets.customerService,
                    width: 32.w,
                    height: 32.h,
                  )
                ],
              ),
            ),
          ),
          CustomDefaultField(
              controller: controller.nameController,
              type: TextInputType.name,
          label: 'name'.tr,
            showBorder: true,
            fillColor: Colors.white,
          ),
          CustomDefaultField(
              controller: controller.messageController,
              type: TextInputType.name,
          maxLines: 3,
          label: 'message'.tr,
            showBorder: true,
            fillColor: Colors.white,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(onPressed: (){},text: 'send'.tr,
                width: 111.w,
                height: 33.h,
                margin: EdgeInsetsDirectional.only(end: 10.r,top: 20.r),),
              MyButton(
mainAxisAlignment: MainAxisAlignment.center,
                onPressed: (){},
                isImage: false,
                background: Colors.green,
                title: 'call'.tr,
                image: AppAssets.call,

                fontSize: 8.sp,
                borderRadius: BorderRadius.circular(10.r),
                width: 111.w,
                height: 33.h,
                titleColor: Colors.white,

              ),
            ],
          )
        ],
      ),
    );
  }
}
