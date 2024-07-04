
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_list.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../widgets/my_text.dart';
import 'controller/problem_controller.dart';

class ProblemView extends GetView<ProblemController>{

  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: CustomAppBar(isImage: false,),
      body: Padding(
        padding:  EdgeInsets.all(12.0.r),
        child: Column(
          children: [
            Container(
              height: 50.h,
              width: 300.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  color: Colors.grey[200]
              ),

              child:           Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.bubble,
                    height: 25.h,
                    width: 25.w,
                  ),

                  Padding(
                    padding:  EdgeInsetsDirectional.only(start: 10.0.r),
                    child: MyText(
                      text:'problem'.tr,),
                  ),
                ],
              )
              ,
            ),

            Align(

                alignment: AlignmentDirectional.topStart,
                child: MyText(text: 'reason_delay'.tr,margin: EdgeInsetsDirectional.only(top: 25.r),)),

            CustomList(text: 'Traffic'.tr,background: Colors.white,borderAll: Border.all(color: Colors.black),),
            MyButton(onPressed: (){
              Get.back();
            },text: 'send'.tr,width: 111.w,
            margin: EdgeInsetsDirectional.only(top: 15.r),
            )

          ],
        ),
      ),
    );

  }
}