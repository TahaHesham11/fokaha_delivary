import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/password_reset/controller/password_reset_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_title_text.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/validate.dart';
import '../otp_password/otp_view.dart';

class PasswordResetView extends GetView<PasswordResetController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.0.r, bottom: 50.r),
                child: Image.asset(AppAssets.fokaha),
              ),
              CustomTitleText(text: 'pass_reset'.tr),
              MyText(
                text: 'otp'.tr,
                fontSize: 10.sp,
                margin: EdgeInsetsDirectional.only(top: 25.r,bottom: 40.r),
              ),
              CustomDefaultField(
                controller: controller.emailController,
                type: TextInputType.emailAddress,
                label: 'email'.tr,
                validate: validate(text: 'email'),

              ),
              MyButton(
                onPressed: () {
                  if(controller.formKey.currentState!.validate()){
                    Get.to(() =>  OtpView(),preventDuplicates: false);

                  }

                },
                text: 'send'.tr,
                margin: EdgeInsetsDirectional.only(top: 40.r),
              )
            ],
          ),
        ),
      ),
    );
  }
}
