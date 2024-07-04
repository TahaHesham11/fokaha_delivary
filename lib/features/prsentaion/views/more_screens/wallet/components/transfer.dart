import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_text.dart';

class TransferItem extends StatelessWidget {
  const TransferItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Expanded(child: MyText(text: 'تم تحويل مبلغ 300من خلال الادارة',fontSize: 13.sp,color:Color(0xff828F9C),)),
            MyText(text: 'تاريخ التحويل : ',fontSize: 13.sp,color:Color(0xff828F9C),),
            MyText(text: '11 / 2 /2020 ',fontSize: 13.sp,color:Color(0xff828F9C),),

          ],
        ),
        Container(
          color: Colors.grey,
          width: double.infinity,
          margin: EdgeInsetsDirectional.symmetric(vertical: 20.r),
          height: 1,
        )
      ],
    );

  }
}
