import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

// class OnBoardingController extends GetxController{
//
//   final currentPage = 0.obs;
//
//   void completeOnboarding() {
//     Get.offAllNamed('/home');
//   }
// }

import '../../../../../core/constants/app_assets.dart';
import '../model/onboarding_model.dart';

class OnboardingController extends GetxController {

  List<OnBoardingModel> boarding = [
    OnBoardingModel(
      title: 'مرحبا',
      image: AppAssets.picOnboarding,
      subTitle: 'هذا النص هو مثال لنص يمكن تغييره',
    ),
    OnBoardingModel(
      title: 'مرحبا',
      image: AppAssets.picOnboarding,
      subTitle: 'هذا النص هو مثال لنص يمكن تغييره',
    ),
    OnBoardingModel(
      title: 'مرحبا',
      image: AppAssets.picOnboarding,
      subTitle: 'هذا النص هو مثال لنص يمكن تغييره',
    )
  ];

  RxBool isLast = false.obs;

  var boardController = PageController();


}
