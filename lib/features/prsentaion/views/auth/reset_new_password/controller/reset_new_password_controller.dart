import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ResetNewPasswordController extends GetxController{


  final newPasswordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  RxBool isPassword = false.obs;
  IconData icon = Icons.visibility;
  final formKey = GlobalKey<FormState>();

  void changePassword (){
    isPassword.value = !isPassword.value;

  }




  RxBool confirmPassword = false.obs;
  IconData suffix = Icons.visibility;

  void changeConfirmPassword (){
    confirmPassword.value = !confirmPassword.value;

  }
}