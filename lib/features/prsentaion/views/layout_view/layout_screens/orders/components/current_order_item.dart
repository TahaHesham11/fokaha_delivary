import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/core/constants/color.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/orders/components/card_item.dart';
import 'package:fokaha_delivery/features/prsentaion/views/more_screens/order_details/orders_details_view.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CurrentOrderItem extends StatelessWidget {
  const CurrentOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Get.to(() =>  OrderDetailsView(),preventDuplicates: false);

      },
      child: Container(
        padding: EdgeInsetsDirectional.all(10.r),
        margin: EdgeInsetsDirectional.only(bottom: 15.r),
        width: 355.w,
        height: 140.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32.r),
            color: myColor.withOpacity(0.6)),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [


              Align(
                  alignment: AlignmentDirectional.centerStart,

                  child: Image.asset(AppAssets.meal,fit: BoxFit.cover,)),
              // Positioned(
              //   left: 1,
              //   bottom: 1,
              //   child: Image.asset(AppAssets.union,fit: BoxFit.cover,
              //
              //   ),
              // ),
              // Positioned(
              //   left: 5,
              //   bottom: 5,
              //   child: Image.asset(AppAssets.circle,fit: BoxFit.cover,
              //
              //   ),
              // ),

              Column(
                children: [
                  MyText(text: '123'),
                  Row(
                    children: [
                      CardItem(text: 'restaurant_address'.tr, title: 'عنوان المطعم'),
                      Spacer(),
                      IconButton(onPressed: () {}, icon: Icon(Icons.close,color: Colors.white,))
                    ],
                  ),
                  CardItem(
                      text: 'customer_address'.tr, title: 'عنوان المطعم'),
                  CardItem(
                      text: 'order'.tr, title: 'عنوان المطعم'),
                  Row(
                    children: [
                      CardItem(text: 're_delivery'.tr, title: 'عنوان المطعم'),
                      Spacer(),

                      Container(
                        width: 112.w,
                        height: 27.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: MaterialButton(onPressed: (){},child: Row(children: [
                          Expanded(
                              flex:2,
                              child: Image.asset(AppAssets.bubble)),
                          Expanded(
                              flex: 8,
                              child: MyText(text: 'problem'.tr,fontSize: 10.sp,)),
                        ],),),
                      )


                    ],
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
