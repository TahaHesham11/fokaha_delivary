import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/core/constants/color.dart';
import 'package:fokaha_delivery/core/constants/validate.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/register/register_view.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_list.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_text_button.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_title_text.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';
import 'package:get/get.dart';
import '../login/login_view.dart';
import 'components/service_type_item.dart';
import 'controller/create_account_controller.dart';

class CreateAccountView extends GetView<CreateAccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          key: controller.formKey,
          child: Padding(
            padding:  EdgeInsets.all(12.0.r),
            child: Column(

              children: [
                CustomTitleText(
                  text: 'create_account'.tr,
                  margin: EdgeInsetsDirectional.only(top: 70.h),
                ),
                Image.asset(AppAssets.picRegister),
                CustomDefaultField(
                  controller: controller.representativeNameController,
                  type: TextInputType.name,
                  label: 'representative'.tr,
                  validate: validate(text: 'representative name'),

                ),
                CustomDefaultField(
                  controller: controller.nationalityController,
                  type: TextInputType.text,
                  label: 'nationality'.tr,
                  validate: validate(text: 'nationality'),

                ),
                CustomDefaultField(
                  controller: controller.idNumberController,
                  type: TextInputType.number,
                  label: 'id'.tr,
                  validate: validate(text: 'id Number'),

                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: MyText(
                    text: 'date'.tr,
                    fontSize: 14.sp,
                  ),
                ),
                 Row(
                  children: [
                    Expanded(child: CustomList(text: 'day'.tr)),
                    Expanded(child: CustomList(text: 'month'.tr)),
                    Expanded(child: CustomList(text: 'year'.tr)),
                  ],
                ),

                Align(
                    alignment: AlignmentDirectional.topStart,

                    child: MyText(text: 'type_car'.tr)),

               Obx(() => Row(
                 children: [
                   Expanded(
                       child: ServiceTypeItem(
                         text: 'general'.tr,
                         onPressed: () {
                           controller.selectVale();
                         },
                         border: controller.isClick.value
                             ? Border.all(color: Colors.white)
                             : Border.all(color: Colors.amber),
                       )),
                   Expanded(
                     child: ServiceTypeItem(
                       text: 'private'.tr,
                       onPressed: () {
                         controller.selectSelf();
                       },
                       border: controller.isClick.value
                           ? Border.all(color: Colors.amber)
                           : Border.all(color: Colors.white),
                     ),
                   )
                 ],
               ),) ,

                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: MyText(
                    text: 'address'.tr,
                    fontSize: 14.sp,
                  ),
                ),
                 Row(
                  children: [
                    Expanded(child: CustomList(text: 'region'.tr)),
                    Expanded(child: CustomList(text: 'city'.tr)),
                    Expanded(child: CustomList(text: 'district'.tr)),
                  ],
                ),
                CustomDefaultField(
                    controller: controller.picCarController,
                    type: TextInputType.text,
                label: 'image_car'.tr,
                  validate: validate(text: 'Image of car plate'),


                ),
                CustomDefaultField(
                    controller: controller.serialNumberController,
                    type: TextInputType.number,
                  label: 'serial_car'.tr,
                  validate: validate(text: 'car serial number'),


                ),


                Obx(() =>  CustomDefaultField(
                  controller: controller.passwordController,
                  type: TextInputType.visiblePassword,
                  label: 'confirm_pass'.tr,
                  isPassword: controller.isPassword.value,
                  validate: validate(text: 'new password'),
                  prefix: IconButton(
                    onPressed: (){
                      controller.changePassword();
                    }, icon: Icon(controller.isPassword.value ? Icons.visibility_off : Icons.visibility),),

                )),

                Obx(() => CustomDefaultField(
                  controller: controller.newPasswordController,
                  type: TextInputType.visiblePassword,
                  label: 'confirm_pass'.tr,
                  validate: validate(text: 'confirm new password'),

                  isPassword: controller.confirmPassword.value,
                  prefix: IconButton(
                    onPressed: () {
                      controller.changeConfirmPassword();
                    },
                    icon: Icon(controller.confirmPassword.value ? Icons.visibility_off : Icons.visibility),
                  ),
                )),

                MyButton(onPressed: (){

                  if(controller.formKey.currentState!.validate()){
                    Get.to(() =>  RegisterView(),preventDuplicates: false);

                  }


                },text: 'follow'.tr,
                margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(text:'dont_account'.tr),

                    CustomTextButton(
                      onPressed: () {
                        Get.back();
                        Get.to(() =>  LoginView(),preventDuplicates: false);

                      },
                      text: 'sign_in'.tr,

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
