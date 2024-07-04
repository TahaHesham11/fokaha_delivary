import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/core/constants/color.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../widgets/my_text.dart';
import 'components/message_item.dart';
import 'controller/chat_user_controller.dart';

class ChatUserView extends GetView<ChatUserController>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(isImage: false,),
      backgroundColor: Colors.white,
      bottomNavigationBar:     Container(
        height: 55.h,
        padding: EdgeInsets.all(5.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),

        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,

            suffixIcon: CircleAvatar(
              radius: 12.r,
              backgroundColor: myColor,
              child: IconButton(
                onPressed: (){},
                icon: Image.asset(AppAssets.send),
              ),
            ),
            hintText: 'write_here'.tr,
          ),
          keyboardType: TextInputType.text,
          controller: controller.textController,
        ),
      ),


        body: CustomScrollView(

            slivers: [
             buildSliverAppBar(context),
          SliverList(
            delegate: SliverChildListDelegate(

              [
                Container(
                  padding: EdgeInsetsDirectional.all(10.r),
                    decoration: BoxDecoration(
                      color: Color(0xffD9D9D9),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0.r),
                        topRight: Radius.circular(40.0.r),
                      ),
                    ),
                    child: Column(
                      children: [

                        ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) => MessageItem(index: index),
                          itemCount: 10,
                        ),
                      ],
                    ))
              ],
            ),
          ),

        ]
        )
    );
  }

  Widget buildSliverAppBar(context) {
    return SliverAppBar(
      expandedHeight: 100.h,
      // pinned: true,
      // stretch: true,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        background: Hero(
          tag: '1',
          child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0.r,horizontal: 10.r),
              child: SafeArea(
                child: Row(
                  children: [
                    Image.asset(AppAssets.imageUser),

                    MyText(text: 'احمد محمد'),
                    Spacer(),
                    Container(
                        width: 35.w,
                        height: 35.h,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Image.asset(AppAssets.call,))
                  ],
                ),
              )),
        ),
      ),
    );
  }

}