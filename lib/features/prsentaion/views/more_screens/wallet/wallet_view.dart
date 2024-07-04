import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/core/constants/color.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/wallet/components/transfer.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_app_bar.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/custom_title_text.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../widgets/my_text.dart';
import 'controller/wallet_controller.dart';

class WalletView extends GetView<WalletController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        isImage: false,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding:  EdgeInsets.all(12.0.r),
          child: Column(

            children: [
              Container(
                width: 336.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: colorForm,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyText(
                        text: 'wallet'.tr,
                      ),
                      Image.asset(
                        AppAssets.wallet,
                        width: 32.w,
                        height: 32.h,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: 337.w,
                height: 88.h,
                margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r), color: myColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTitleText(
                      text: 'current_balance'.tr,
                      color: Colors.white,
                      margin: EdgeInsetsDirectional.only(end: 10.r),
                    ),
                    CustomTitleText(
                      text: '120 ر.س',
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Align(
                  alignment: AlignmentDirectional.topStart,
                  child: MyText(text: 'previous_transfers'.tr,margin: EdgeInsetsDirectional.symmetric(vertical: 10.r),)),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return TransferItem();
                },
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
