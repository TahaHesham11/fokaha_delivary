import 'package:flutter/material.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/home/home_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/notification/notification_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/orders/order_view.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/user/user_view.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class LayoutController extends GetxController{

  RxInt current = 0.obs;

  List<Widget> bottomScreen = [
     HomeView(),
     OrderView(),
     NotificationView(),
     UserView(),
  ];

  void changeBottom(index) {
    current.value = index;

    update();
  }


}