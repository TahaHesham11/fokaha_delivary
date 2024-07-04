import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_core/controller/layout_controller.dart';
import 'package:get/get.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/color.dart';

class LayoutView extends GetView<LayoutController>{
  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: Obx(() => controller.bottomScreen[controller.current.value]),
      bottomNavigationBar: SizedBox(
        height: 76.h,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.r),
            topRight: Radius.circular(10.r),
          ),
          child: Obx(() => BottomNavigationBar(
            currentIndex: controller.current.value,
            selectedItemColor: myColor,
            type: BottomNavigationBarType.fixed,
            elevation: 0.0,
            onTap: (index) {
              controller.changeBottom(index);
            },
            items: [
              BottomNavigationBarItem(
                icon: controller.current.value == 0
                    ? Column(
                  children: [
                    Image.asset(
                      AppAssets.home,
                      color: myColor,
                      width: 35.w,
                      height: 35.h,
                    ),
                  ],
                )
                    : Image.asset(
                  AppAssets.home,
                  color: Colors.black,
                  width: 35.w,
                  height: 35.h,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: controller.current.value == 1
                    ? Column(
                  children: [
                    Image.asset(
                      AppAssets.clipboard,
                      color: myColor,
                      width: 35.w,
                      height: 35.h,
                    ),
                  ],
                )
                    : Image.asset(
                  AppAssets.clipboard,
                  color: Colors.black,
                  width: 35.w,
                  height: 35.h,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: controller.current.value == 2
                    ? Column(
                  children: [
                    Image.asset(
                      AppAssets.notification,
                      color: myColor,
                      width: 35.w,
                      height: 35.h,
                    ),
                  ],
                )
                    : Image.asset(
                  AppAssets.notification,
                  color: Colors.black,
                  width: 35.w,
                  height: 35.h,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: controller.current.value == 3
                    ? Image.asset(
                  AppAssets.users,
                  color: myColor,
                  width: 35.w,
                  height: 35.h,
                )
                    : Image.asset(
                  AppAssets.users,
                  color: Colors.black,
                  width: 35.w,
                  height: 35.h,
                ),
                label: '',
              ),
            ],
          )),
        ),
      ),
    );
  }
}