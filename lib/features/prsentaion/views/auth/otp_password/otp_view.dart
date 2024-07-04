import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/otp_password/controller/otp_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/reset_new_password/reset_new_password_view.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_title_text.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpView extends GetView<OtpController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: controller.formKey,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.0.r, bottom: 50.r),
                child: Image.asset(AppAssets.fokaha),
              ),
              CustomTitleText(text: 'code'.tr),
              MyText(
                text: 'resend_code'.tr,
                fontSize: 10.sp,
                decoration: TextDecoration.underline,
                margin: EdgeInsetsDirectional.only(top: 20.r, bottom: 40.r),
              ),
              PinCodeTextField(
                textInputAction: TextInputAction.send,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the code';
                  }
                  if (value.length < 5) {
                    return 'Code must be 4 digits';
                  }
                  return null;
                },
                appContext: context,
                length: 5,
                controller: controller.otpController,
                autoFocus: true,
                cursorColor: Colors.black,
                keyboardType: TextInputType.number,
                obscureText: false,
                animationType: AnimationType.scale,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5.r),
                  fieldHeight: 50.h,
                  fieldWidth: 50.w,
                  borderWidth: 1.0.w,
                  activeFillColor: Colors.grey[200],
                  activeColor: Colors.grey[200],
                  inactiveColor: Colors.grey[200],
                  inactiveFillColor: Colors.white,
                  selectedColor: Colors.grey[200],
                  selectedFillColor: Colors.white,
                ),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                onCompleted: (submitCode) {
                  // تنفيذ الإجراء عند اكتمال الإدخال
                },
                onChanged: (value) {
                },
              ),

              MyButton(onPressed: (){

                if(controller.formKey.currentState!.validate()){
                  Get.to(() =>  ResetNewPasswordView(),preventDuplicates: false);

                }


              },text: 'send'.tr,margin: EdgeInsetsDirectional.only(top: 30.r),)
            ],
          ),
        ),
      ),
    );
  }
}
