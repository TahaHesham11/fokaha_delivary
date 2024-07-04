import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../../../widgets/my_text.dart';
import '../../chat_user/chat_user_view.dart';

class UsersItem extends StatelessWidget {
  const UsersItem({super.key,});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(() =>  ChatUserView(),preventDuplicates: false);

      },
      child: Container(
        margin: EdgeInsets.only(bottom: 5.r,top: 5.r),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Colors.grey[200]

        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 15.0.r),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(AppAssets.imageUser,height: 40.h,width: 40.w,),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsetsDirectional.only(end: 10.0.r),
                          child: MyText(
                            text:'احمد محمد احمد',


                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsetsDirectional.only(end: 5.r),

                          child: Container(
                            padding: EdgeInsetsDirectional.all(4.r),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Colors.grey[300]
                            ),
                            child: MyText(
                              text:'28/03',
                                  fontWeight: FontWeight.w300,
                                  fontSize: 8.sp
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsetsDirectional.only(top: 8.0.r),
                      child: MyText(
                       text: ' اهذا النص يمكن تغييره اهذا النص يمكن تغييرهاهذا النص يمكن تغي اهذا النص يمكن تغييره اهذا النص يمكن تغييرهاهذا النص يمكن تغييره',
                            fontWeight: FontWeight.w300,
                            fontSize: 8.sp,
                            color: const Color(0xff565656)
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
