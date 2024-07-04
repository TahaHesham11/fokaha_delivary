import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/color.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/login/login_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/auth/verification/verification_view.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:get/get.dart';

import '../../auth/register/register_view.dart';
import '../controller/onboarding_controller.dart';

class BuildButton extends GetView<OnboardingController>{

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        MyButton(
            background: Colors.white,
            textColor: myColor,
            text: 'create_account'.tr, onPressed: (){
          Get.to(() =>  VerificationView(),preventDuplicates: false);
        }),
        SizedBox(height: 10.h,),
        MyButton(
            background: Colors.white,
            textColor: myColor,
            text: 'sign_in'.tr, onPressed: (){
          Get.to(() =>  LoginView(),preventDuplicates: false);



        }),
      ],
    );
  }
}