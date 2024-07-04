import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/color.dart';
import 'package:fokaha_delivery/features/prsentaion/widgets/my_button.dart';

class ServiceTypeItem extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
 final BoxBorder? border;

  const ServiceTypeItem({super.key, required this.text,required this.onPressed,this.border});

  @override
  Widget build(BuildContext context) {
    return MyButton(
      height: 50.h,
      border: border,
   
      background: colorForm,
      onPressed: onPressed,
      text: text,
      textColor: Colors.grey,
      margin: EdgeInsetsDirectional.symmetric(vertical: 20.r,horizontal: 20.r),
      borderRadius: BorderRadius.circular(10.r),

    );
  }
}
