import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/register/controller/register_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/success_acount/success_account_view.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_text_button.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_title_text.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';
import 'package:get/get.dart';
import '../../../../../core/constants/color.dart';
import '../../../../../core/constants/validate.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            key: controller.formKey,
            child: Column(

                  children: [
            CustomTitleText(
              text: 'create_account'.tr,
              margin: EdgeInsetsDirectional.only(top: 70.h),

            ),
            CustomDefaultField(
                controller: controller.carBrandController,
                type: TextInputType.text,
              label: 'brand_car'.tr,
              validate: validate(text: 'brand car'),

            ),
            CustomDefaultField(
                controller: controller.typeCarController,
                type: TextInputType.text,
              label: 'type_car'.tr,
              validate: validate(text: 'type of car'),

            ),
            CustomDefaultField(
              controller: controller.yearCarController,
              type: TextInputType.datetime,
              label: 'manufacturing_year'.tr,
              validate: validate(text: 'manufacturing year'),

            ),
            CustomDefaultField(
              controller: controller.idPhotoController,
              type: TextInputType.text,
              label: 'id_photo'.tr,
              validate: validate(text: 'Id photo'),

            ),
            CustomDefaultField(
              controller: controller.nameSponsorController,
              type: TextInputType.name,
              label: 'sponsor'.tr,
              validate: validate(text: 'Name of sponsor'),

            ),
            CustomDefaultField(
              controller: controller.picCarFrontController,
              type: TextInputType.text,
              label: 'pic_front'.tr,
              validate: validate(text: 'pic front'),

            ),
            CustomDefaultField(
              controller: controller.picCarBackController,
              type: TextInputType.text,
              label: 'pic_back'.tr,
              validate: validate(text: 'pic back'),

            ),

                    Row(
                      children: [
                        Obx(() =>  Checkbox(
                          activeColor: controller.isCheckTerms.value ? Colors.red : Colors.black,
                          value: controller.isCheckTerms.value,
                          onChanged: (value) {
                            controller.changeTermsCheck();
                          },
                          splashRadius: 20,
                          visualDensity: VisualDensity.compact,
                        ),
                        ),
                        MyText(text: 'i_agree_terms'.tr),
                      ],
                    ),

                    MyButton(
                      onPressed: () {
                        if(controller.formKey.currentState!.validate()){
                          if (!controller.isCheckTerms.value) {
                            Get.snackbar(
                              'error'.tr, // عنوان الرسالة
                              'please_agree'.tr, // نص الرسالة
                              backgroundColor: Colors.red,
                              colorText: Colors.white,
                            );
                          } else {
                            Get.to(() => SuccessAccountView(), preventDuplicates: false);
                          }
                        }
                      },
                      text: 'create_account'.tr,
                      margin: EdgeInsetsDirectional.only(top: 60.r, bottom: 40.r),
                    ),

                    Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                MyText(text:'dont_account'.tr),

                CustomTextButton(
                  onPressed: () {
                    Get.back();

                  },
                  text: 'sign_in'.tr,

                  color: myColor,
                ),

              ],
            ),

                  ],
                ),
          ),
        ));
  }
}
