import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/constants/color.dart';
import 'my_text.dart';

class DefaultButton extends StatelessWidget {

  final String? text;
  final Widget image;
  final double? width;
  final double? height;
  final void Function()? onPressed;
  final Color? background;
  const DefaultButton({
    super.key,
    this.height,
    this.background,
    this.text,
    required this.image,
    required this.onPressed,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 30.r, start: 10.r, end: 10.r),
      height: height ?? 69.h,
      width: width ?? 315.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.r),
        color: background ?? myColor,
        border: Border.all(color: Colors.transparent),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(child: image),
            SizedBox(width: 5.w), // إضافة فراغ بين الصورة والنص
            Flexible(
              child: MyText(
                text: text ?? '',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
