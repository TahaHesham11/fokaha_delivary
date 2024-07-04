import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderController extends GetxController with SingleGetTickerProviderMixin {
  late TabController tabController;
  RxInt selectedIndex = 0.obs;

  // @override
  // void onInit() {
  //   super.onInit();
  //   tabController = TabController(length: 2, vsync: this);
  //   tabController.addListener(() {
  //     selectedIndex.value = tabController.index;
  //   });
  // }
  //
  // @override
  // void onClose() {
  //   tabController.dispose();
  //   super.onClose();
  // }
}