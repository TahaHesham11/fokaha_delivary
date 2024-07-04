import 'package:get/get.dart';

class UserController extends GetxController{



  RxBool isCheckAvailable = false.obs;
  RxBool isCheckUnavailable = false.obs;

  void changeCheck(String status) {
    if (status == 'available') {
      isCheckAvailable.value = true;
      isCheckUnavailable.value = false;
    } else if (status == 'unavailable') {
      isCheckAvailable.value = false;
      isCheckUnavailable.value = true;
    }
  }
}