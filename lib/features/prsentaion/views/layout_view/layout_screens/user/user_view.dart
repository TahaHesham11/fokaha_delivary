import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/user/components/user_item.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/user/controller/order_controller.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/chat/chat_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/customer_service/customer_service_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/privacy/privacy_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/profile/profile_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/terms/terms_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/wallet/wallet_view.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';
import 'package:get/get.dart';

import '../../../../../../core/constants/app_assets.dart';
import '../../../../../../core/constants/color.dart';

class UserView extends GetView<UserController>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: const CustomAppBar(isImage: false,),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [


            Row(
              children: [
                Expanded(
                  child: Obx(() => Container(
                    height: 50.h,
                    width: 145.w,
                    margin: EdgeInsetsDirectional.symmetric(vertical: 20.r,horizontal: 10.r),

                    decoration: BoxDecoration(
                      color: colorForm,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: controller.isCheckAvailable.value,
                          activeColor: myColor,
                          onChanged: (value) {
                            if (!controller.isCheckAvailable.value) {
                              controller.changeCheck('available');
                            }
                          },
                        ),
                        MyText(text: 'available'.tr),
                      ],
                    ),
                  )),
                ),
                Expanded(
                  child: Obx(() => Container(
                    margin: EdgeInsetsDirectional.symmetric(vertical: 20.r,horizontal: 10.r),
                    height: 50.h,
                    width: 145.w,
                    decoration: BoxDecoration(
                      color: colorForm,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: controller.isCheckUnavailable.value,
                          activeColor: myColor,
                          onChanged: (value) {
                            if (!controller.isCheckUnavailable.value) {
                              controller.changeCheck('unavailable');
                            }
                          },
                        ),
                        MyText(text: 'unavailable'.tr),
                      ],
                    ),
                  )),
                ),
              ],
            ),

            UserItem(
                onPressed: (){
                  Get.to(() =>  ProfileView(),preventDuplicates: false);

                },
                text: 'personal_information'.tr,
                image: AppAssets.profile),
            UserItem(
                onPressed: (){
                  Get.to(() =>  WalletView(),preventDuplicates: false);

                },
                text: 'wallet'.tr,
                image: AppAssets.wallet,

            ),
            UserItem(
                onPressed: (){
                  Get.to(() =>  CustomServiceView(),preventDuplicates: false);

                },
                text: 'technical_support'.tr,
                image: AppAssets.customerService),
            UserItem(
                onPressed: (){
                  Get.to(() =>  ChatView(),preventDuplicates: false);

                },
                text: 'chats'.tr,
                image: AppAssets.chat),
            UserItem(
                onPressed: (){
                  Get.to(() =>  PrivacyView(),preventDuplicates: false);

                },
                text: 'privacy'.tr,
                image: AppAssets.lock),
            UserItem(
                onPressed: (){
                  Get.to(() =>  TermsView(),preventDuplicates: false);

                },
                text: 'terms'.tr,
                image: AppAssets.terms),
            UserItem(
                onPressed: (){},
                text: 'sign_out'.tr,
                image: AppAssets.logOut),

          ],
        ),
      ),
    );
  }
}