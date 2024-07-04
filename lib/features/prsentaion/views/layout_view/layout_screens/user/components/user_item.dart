import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/color.dart';

import '../../../../../../../core/constants/app_assets.dart';
import '../../../../../widgets/my_text.dart';

class UserItem extends StatelessWidget {
  final String text;
  final String image;
 final void Function()? onPressed;
  const UserItem({super.key,required this.onPressed,required this.text,required this.image});

  @override
  Widget build(BuildContext context) {
    return           GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsetsDirectional.only(bottom: 20.r),
          height: 50.h,
          width: 336.w,
          decoration: BoxDecoration(
              color: colorForm,
              borderRadius: BorderRadius.circular(10.r)
          ),
          child: Row(
            children: [
              Image.asset(image,width: 30.w,height: 30.h,),
               MyText(text: text,margin: EdgeInsetsDirectional.only(start: 10.r),)
            ],
          )
      ),
    );
  }
}
