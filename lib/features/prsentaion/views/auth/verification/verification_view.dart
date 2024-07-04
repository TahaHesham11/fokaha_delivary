
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/color.dart';
import '../../../../../core/constants/validate.dart';
import '../../../widgets/custom_defaultField.dart';
import '../../../widgets/custom_text_button.dart';
import '../../../widgets/my_button.dart';
import '../../../widgets/my_text.dart';
import '../otp_register/otp_register_view.dart';
import 'controller/verification_controller.dart';

class VerificationView extends GetView<VerificationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.0.r),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.0.r),
                child: Image.asset(
                  AppAssets.fokaha,
                ),
              ),



              Container(
                height: 60.h,
                margin: EdgeInsetsDirectional.only(top: 20.r),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(5.r),


                ),

                child: Row(
                  children: [
                    Expanded(
                      child: CustomDefaultField(
                          controller: controller.enterPhoneNumber,
                          fontSize: 14.sp,
                          fillColor: Colors.transparent,

                          label: 'enter_phone'.tr,
                          type: TextInputType.phone),

                    ),
                    IconButton(onPressed: (){},
                        icon:
                        Icon(Icons.arrow_circle_right_outlined,
                          size: 20.sp,
                          color: const Color(0xff6F7380),)),

                    Padding(
                      padding:  EdgeInsetsDirectional.only(end: 5.r),
                      child: const MyText(
                          text: '+9859',
                          color: Color(0xff6F7380)
                      ),
                    )
                  ],
                ),
              ),

              MyButton(
                onPressed: () {
                  if(controller.formKey.currentState!.validate()){
                    Get.to(() =>  OtpRegisterView(),preventDuplicates: false);

                  }

                },
                text: 'send'.tr,
                margin: EdgeInsetsDirectional.only(top: 40.r),
                width: 360.w,
              ),

              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextButton(
                    onPressed: () {

                    },
                    text: 'create_account'.tr,

                    color: myColor,
                  ),

                   MyText(text:'dont_account'.tr),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}