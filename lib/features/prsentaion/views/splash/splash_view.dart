import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(' Bar'),
      ),
    );
  }
}


// Obx(() => Column(
// children: [
// MaterialButton(onPressed: (){
// controller.x.value++;
// },
// child:         Text(controller.x.value.toString()),
//
// ),
// ],
// ));