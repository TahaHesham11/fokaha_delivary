import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/login/login_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/reset_new_password/controller/reset_new_password_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/validate.dart';
import '../../../widgets/custom_title_text.dart';

class ResetNewPasswordView extends GetView<ResetNewPasswordController> {
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
               CustomTitleText(text: 'pass_reset'.tr,margin: EdgeInsetsDirectional.only(bottom: 20.r),),
              Obx(() => CustomDefaultField(
                controller: controller.newPasswordController,
                type: TextInputType.visiblePassword,
                label: 'confirm_pass'.tr,
                validate: validate(text: 'new password'),

                isPassword: controller.isPassword.value,
                prefix: IconButton(
                  onPressed: () {
                    controller.changePassword();
                  },
                  icon: Icon(controller.isPassword.value ? Icons.visibility_off : Icons.visibility),
                ),
              )

              ),
            Obx(() =>  CustomDefaultField(
              controller: controller.confirmPasswordController,
              type: TextInputType.visiblePassword,
              label: 'confirm_pass'.tr,
              isPassword: controller.confirmPassword.value,
              validate: validate(text: 'Confirm the new password'),

              prefix: IconButton(
                onPressed: (){
                  controller.changeConfirmPassword();
                }, icon: Icon(controller.confirmPassword.value ? Icons.visibility_off : Icons.visibility),),

            )),
              MyButton(onPressed: (){

                if(controller.formKey.currentState!.validate()){
                  Get.to(() =>  LoginView(),preventDuplicates: false);

                }


              },text: 'send'.tr,margin: EdgeInsetsDirectional.only(top: 30.r),)

            ],
          ),
        ),
      ),
    );
  }
}
