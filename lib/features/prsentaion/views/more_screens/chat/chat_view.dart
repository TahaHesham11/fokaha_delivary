import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../widgets/my_text.dart';
import 'component/users_item.dart';
import 'controller/chat_controller.dart';

class ChatView extends GetView<ChatController>{

  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: CustomAppBar(isImage: false,),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
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
                    AppAssets.chat,
                    height: 25.h,
                    width: 25.w,
                  ),
        
                  Padding(
                    padding:  EdgeInsetsDirectional.only(start: 10.0.r),
                    child: MyText(
                      text:'chats'.tr,),
                  ),
                ],
              )
              ,
            ),
        
            Padding(
              padding:  EdgeInsetsDirectional.only(top: 25.r),
              child: ListView.builder(
        
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index)=>UsersItem(),
                  itemCount: 10),
            )
        
        
          ],
        ),
      ),
    );
  }
}