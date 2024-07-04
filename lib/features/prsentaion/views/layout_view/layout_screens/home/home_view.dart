import 'package:flutter/material.dart';
import 'package:fokaha_delivery/features/prsentaion/views/layout_view/layout_screens/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController>{

  @override
  Widget build(BuildContext context){
    return Center(child: Text('Home'));
  }


  void showMyDialog() {
    Get.dialog(
      AlertDialog(
        title: Text('Dialog Title'),
        content: Text('This is the content of the dialog'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Get.back(); // إغلاق الحوار
            },
            child: Text('Close'),
          ),
        ],
      ),
    );
  }

}