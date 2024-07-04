import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../widgets/custom_defaultField.dart';
import '../../../widgets/custom_title_text.dart';
import '../../../widgets/my_button.dart';
import 'controller/change_password_profile_controller.dart';

class ChangePasswordProfileView extends GetView<ChangePasswordProfileController>{

  @override
  Widget build(BuildContext context){
    return  Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100.0.r, bottom: 50.r),
              child: Image.asset(AppAssets.fokaha),
            ),
            CustomTitleText(text: 'pass_reset'.tr,margin: EdgeInsetsDirectional.only(bottom: 20.r),),

            Padding(
              padding:  EdgeInsets.only(bottom: 20.0.r),
              child: CustomDefaultField(
                controller: controller.newPasswordController,
                type: TextInputType.visiblePassword,
                showBorder: true,
                label: 'new_pass'.tr,

              ),
            ),
            Obx(() => CustomDefaultField(
              controller: controller.newPasswordController,
              type: TextInputType.visiblePassword,
              showBorder: true,
              label: 'new_pass'.tr,
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
              showBorder: true,

              prefix: IconButton(
                onPressed: (){
                  controller.changeConfirmPassword();
                }, icon: Icon(controller.confirmPassword.value ? Icons.visibility_off : Icons.visibility),),

            )),
            MyButton(onPressed: (){

              Get.back();

            },text: 'send'.tr,margin: EdgeInsetsDirectional.only(top: 30.r),textColor: Colors.amber,)

          ],
        ),
      ),
    );
  }
}