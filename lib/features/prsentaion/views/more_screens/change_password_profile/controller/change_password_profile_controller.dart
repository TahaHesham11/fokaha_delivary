import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ChangePasswordProfileController extends GetxController{

  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  RxBool isPassword = false.obs;
  IconData icon = Icons.visibility;

  void changePassword (){
    isPassword.value = !isPassword.value;

  }




  RxBool confirmPassword = false.obs;
  IconData suffix = Icons.visibility;

  void changeConfirmPassword (){
    confirmPassword.value = !confirmPassword.value;

  }
}