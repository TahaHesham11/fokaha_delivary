import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fokaha_delivery/core/constants/app_assets.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_core/layout_view.dart';
import 'package:get/get.dart';
import '../../../widgets/custom_title_text.dart';

class SuccessAccountView extends StatefulWidget {
  const SuccessAccountView({super.key});

  @override
  State<SuccessAccountView> createState() => _SuccessAccountViewState();
}

class _SuccessAccountViewState extends State<SuccessAccountView> {
  @override
  void initState() {
    startDelayedAction();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.successAccount),
            Expanded(
              child: CustomTitleText(
                text: 'account_created'.tr,
                fontSize: 28.sp,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void startDelayedAction() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.to(() => LayoutView(), preventDuplicates: false);
    });
  }
}

