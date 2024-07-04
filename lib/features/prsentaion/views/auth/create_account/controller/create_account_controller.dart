import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CreateAccountController extends GetxController{

final representativeNameController = TextEditingController();
final nationalityController = TextEditingController();
final idNumberController = TextEditingController();
final picCarController = TextEditingController();
final serialNumberController = TextEditingController();
final passwordController = TextEditingController();
final newPasswordController = TextEditingController();
final formKey = GlobalKey<FormState>();


RxBool confirmPassword = false.obs;
IconData suffix = Icons.visibility;

void changeConfirmPassword (){
  confirmPassword.value = !confirmPassword.value;

}

RxBool isPassword = false.obs;
IconData icon = Icons.visibility;

void changePassword (){
  isPassword.value = !isPassword.value;

}

RxBool isClick =false.obs;
void selectSelf() {
  isClick.value = true;
}

void selectVale() {
  isClick.value = false;
}
}