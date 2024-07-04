import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/core/constants/color.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/orders/components/card_item.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';

class PreviousOrderItem extends StatelessWidget {
  const PreviousOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(10.r),
      margin: EdgeInsetsDirectional.only(bottom: 15.r),
      width: 355.w,
      height: 130.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.r),
          color: Color(0xff8E8B8B)),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          alignment: AlignmentDirectional.bottomStart,

          children: [

            // Image.asset(AppAssets.union,fit: BoxFit.fill,color: Color(0xff565656),),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyText(text: '123'),
                Row(
                  children: [
                    Expanded(
                        child: CardItem(text: 'عنوان المطعم', title: 'عنوان المطعم')),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.close,color: Colors.white,))
                  ],
                ),
                Row(
                  children: [
                    CardItem(text: 'عنوان المطعم', title: 'عنوان المطعم'),
                    Spacer(),
                    MyText(text: 'تم التسليم للعميل')
                  ],
                ),
                CardItem(
                    text: 'عنوان المطعم', title: 'عنوان المطعم'),
                CardItem(
                    text: 'عنوان المطعم',
                    title: 'عنوان المطعم'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
