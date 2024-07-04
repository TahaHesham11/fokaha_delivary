import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageItem extends StatelessWidget {
   MessageItem({super.key,this.index});


   int? index = 0;

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: index!.isEven ? CrossAxisAlignment.start : CrossAxisAlignment.end ,
      children: [
        Column(

          children: [
            Container(
              height: 70.h,
              width: 250.w,
              margin:index!.isEven ? EdgeInsets.only(right: 10.r):EdgeInsets.only(left: 10.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: const Color(0xffFFFFFF),
              ),
            ),
            Container(
              margin:index!.isEven ? EdgeInsets.only(right: 100.r, top: 10.r,bottom: 10.r) : EdgeInsets.only( left: 100.r,top: 10.r,bottom: 10.r),
              child: Text(
                'امس 12:22 ص',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xff565656),
                ),
              ),

            ),
          ],
        ),
      ],
    );
  }
}
