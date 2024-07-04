import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/core/constants/color.dart';
import 'package:fokaha_delivery/core/constants/validate.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/login/controller/login_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/password_reset/password_reset_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/register/register_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_core/layout_view.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_text_button.dart';
import '../../../widgets/my_text.dart';

class LoginView extends GetView<LoginController>{

  @override
  Widget build(BuildContext context){
    return Scaffold(

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.all(12.0.r),
          child: Form(
            key: controller.formKey,
            child: Column(
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: 100.0.r),
                  child: Image.asset(AppAssets.fokaha,),
                ),


                Padding(
                  padding:  EdgeInsetsDirectional.only(top: 40.0.r,bottom: 15.r),
                  child: CustomDefaultField(
                      controller: controller.numberController,
                      type: TextInputType.number,
                  label: 'phone'.tr,
                    validate: validate(text: 'phone number'),

                  ),
                ),
                CustomDefaultField(
                    controller: controller.passwordController,
                    type: TextInputType.visiblePassword,
                label: 'password'.tr,
                  validate: validate(text: 'password'),

                ),

                Row(
                  children: [
                    Obx(() =>               Checkbox(
                      activeColor: controller.isCheckBox.value ? Colors.red : Colors.black,
                      value:controller.isCheckBox.value,
                      onChanged: (value) {
                        controller.changeCheck();
                      },
                      splashRadius: 20,
                      visualDensity: VisualDensity.compact,
                    ),
                    ),

                    MyText(text: 'remember'.tr,
                      fontSize: 13.sp,
                      color: Colors.grey[400],
                    ),
                    const Spacer(),
                    CustomTextButton(
                      color: myColor,
                      fontSize: 15.sp,
                      text: 'forgot password'.tr,
                      onPressed: () {
                        Get.to(() =>  PasswordResetView(),preventDuplicates: false);

                      },
                    ),
                  ],
                ),

                MyButton(onPressed: (){
                  if(controller.formKey.currentState!.validate()){
                    Get.to(() =>  LayoutView(),preventDuplicates: false);

                  }
                },text: 'registration'.tr,margin: EdgeInsetsDirectional.only(top: 40.r,bottom: 150.r),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(text:'dont_account'.tr),

                    CustomTextButton(
                      onPressed: () {
                      Get.to(() =>  RegisterView(),preventDuplicates: false);

                      },
                      text: 'create_account'.tr,

                      color: myColor,
                    ),

                  ],
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}