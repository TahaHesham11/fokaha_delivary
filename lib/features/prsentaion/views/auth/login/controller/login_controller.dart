import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{


  final numberController = TextEditingController();
  final passwordController = TextEditingController();

  RxBool isCheckBox = false.obs;
  final formKey = GlobalKey<FormState>();

void changeCheck(){
  isCheckBox.value = !isCheckBox.value;

}


}