import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController{


  final carBrandController = TextEditingController();
  final typeCarController = TextEditingController();
  final yearCarController = TextEditingController();
  final idPhotoController = TextEditingController();
  final nameSponsorController = TextEditingController();
  final picCarFrontController = TextEditingController();
  final picCarBackController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  RxBool isCheckTerms = false.obs;

  void changeTermsCheck(){
    isCheckTerms.value = !isCheckTerms.value;
  }

}