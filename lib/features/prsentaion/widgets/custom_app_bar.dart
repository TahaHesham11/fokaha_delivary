import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_assets.dart';

class CustomAppBar extends StatelessWidget implements  PreferredSizeWidget {
  const CustomAppBar({
    Key? key, this.image,
    this.text,
    this.imageBack,
    this.backColor,
    this.height,
    this.width,
    this.backgroundColor,
    this.isAction=false,
    this.isBack = true,
    this.isImage = true,
  }) : super(key: key);

  final Widget? imageBack;
  final bool isAction;
  final bool isBack;
  final bool isImage;
  final Color? backColor;
  final Widget? image;
  final Widget? text;
  final double? height;
  final double? width;
  final Color? backgroundColor;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
elevation: 0.0,
      scrolledUnderElevation: 0.0,
      toolbarOpacity: 0.0,
      backgroundColor: backgroundColor,
      leading:
        isBack ? IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon:imageBack?? Image.asset(
              AppAssets.back,


            )
        ): SizedBox(),

      centerTitle: true,
      title:isImage ? text??Image.asset(
        AppAssets.fokaha,
        height: height??39.h,
        width: width??83.w,
      ):Container(),
    );
  }
}
