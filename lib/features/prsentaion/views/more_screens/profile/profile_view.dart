import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/core/constants/color.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/change_password_profile/change_password_profile_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/profile/controller/profile_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_defaultField.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyText(
          text: 'Profile'.tr,
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Image.asset(AppAssets.back))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppAssets.picRegister),
            CustomDefaultField(
              controller: controller.nameController,
              type: TextInputType.name,
              label: 'name'.tr,
            ),
            CustomDefaultField(
              controller: controller.numberController,
              type: TextInputType.number,
              label: 'phone'.tr,
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 12.r),
                width: 360.w,
                height: 70.h,
                decoration: BoxDecoration(
                  color: colorForm,
                  borderRadius: BorderRadius.circular(10.r),

                ),
                child: MaterialButton(onPressed: (){
                  Get.to(() =>  ChangePasswordProfileView(),preventDuplicates: false);

                },child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: MyText(text:'password'.tr,color: Colors.grey[400],)),)),
            
            MyButton(
              onPressed: () {},
              text: 'save'.tr,
              textColor: Colors.amber,
              margin: EdgeInsetsDirectional.only(top: 100.r),

            )
          ],
        ),
      ),
    );
  }
}
